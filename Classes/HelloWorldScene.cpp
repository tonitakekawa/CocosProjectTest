#include "cocos2d.h"
#include "cocostudio/CocoStudio.h"
#include "ui/CocosGUI.h"
#include "HelloWorldScene.h"
#include "GameScene.h"
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
	this->addChild(node);

	// 表示位置、大きさを調整する
	float vmag = vsize.width / node->getContentSize().width;
	float hmag = vsize.height / node->getContentSize().height;
	if (vmag > hmag) {
		node->setScale( hmag );
		float width = node->getContentSize().width * hmag;
		float clack = (vsize.width - width) / 2;
		node->setPosition(Vec2(clack, 0));
	}
	else {
		node->setScale(vmag);
		float height = node->getContentSize().height * vmag;
		float clack = (vsize.height - height) / 2;
		node->setPosition(Vec2(0, clack));
	}

	// 終了ボタン押下時のアクション
	auto touchQuit = [this, director](Ref* pSender, ui::Widget::TouchEventType type){
		if (type == ui::Widget::TouchEventType::ENDED) {
			director->end();
		}
	};

	// スタートボタン押下時のアクション
	auto touchStart = [this, director](Ref* pSender, ui::Widget::TouchEventType type){
		if (type == ui::Widget::TouchEventType::ENDED) {
			director->replaceScene(GameScene::createScene());
		}
	};

	auto QuitBtn = (cocos2d::ui::Widget*)node->getChildByName("BTN");
	QuitBtn->addTouchEventListener(touchQuit);

	auto startBtn = (cocos2d::ui::Widget*)node->getChildByName("START");
	startBtn->addTouchEventListener(touchStart);

    return true;
}
