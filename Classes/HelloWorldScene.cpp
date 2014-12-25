#include "cocos2d.h"
#include "cocostudio/CocoStudio.h"
#include "ui/CocosGUI.h"
#include "HelloWorldScene.h"
#include <algorithm>

USING_NS_CC;
using namespace std;

Scene* HelloWorld::createScene()
{
    auto scene = Scene::create();
	scene->addChild(HelloWorld::create());
    return scene;
}

bool HelloWorld::init()
{
    if ( !Layer::init() ) return false;
    
	auto director = Director::getInstance();
	auto loader = CSLoader::getInstance();

	Size vsize = director->getVisibleSize();
	Vec2 org = director->getVisibleOrigin();

	auto node = (cocos2d::Node*)loader->createNodeWithFlatBuffersFile("MainScene.csb");
	//node->setName("NODE");	// ���O���Ȃ��Ă����C������
	this->addChild(node);

	// �c����𒲐�����
	float dispRatio = vsize.width / vsize.height;
	float nodeRatio = node->getContentSize().width / node->getContentSize().height;
	float vmag = vsize.width / node->getContentSize().width;
	float hmag = vsize.height / node->getContentSize().height;
	node->setScale(min({vmag, hmag}));

	// �I���{�^���������̃A�N�V����
	auto touchQuit = [this, director](Ref* pSender, ui::Widget::TouchEventType type){
		if (type == ui::Widget::TouchEventType::ENDED) {
			director->end();
		}
	};

	// �X�^�[�g�{�^���������̃A�N�V����
	auto touchStart = [this, director](Ref* pSender, ui::Widget::TouchEventType type){
		if (type == ui::Widget::TouchEventType::ENDED) {
			director->replaceScene(HelloWorld::createScene());
		}
	};

	auto QuitBtn = (cocos2d::ui::Widget*)node->getChildByName("BTN");
	QuitBtn->addTouchEventListener(touchQuit);

	auto startBtn = (cocos2d::ui::Widget*)node->getChildByName("START");
	startBtn->addTouchEventListener(touchStart);

    return true;
}
