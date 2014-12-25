#include "cocos2d.h"
#include "cocostudio/CocoStudio.h"
#include "ui/CocosGUI.h"
#include "HelloWorldScene.h"

USING_NS_CC;

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
	node->setName("NODE");
	this->addChild(node);

	// 縦横比を調整する
	float dispRatio = vsize.width / vsize.height;
	float nodeRatio = node->getContentSize().width / node->getContentSize().height;
	float vmag = vsize.width / node->getContentSize().width;
	float hmag = vsize.height / node->getContentSize().height;
	node->setScale(vmag);

	// 終了ボタン押下時のアクション
	auto touchQuit = [this, director](Ref* pSender, ui::Widget::TouchEventType type){
		if (type == ui::Widget::TouchEventType::ENDED) {
			director->end();
		}
	};

	auto btn = (cocos2d::ui::Widget*)(this->getChildByName("NODE")->getChildByName("BTN"));
	btn->addTouchEventListener(touchQuit);

	auto sbtn = (cocos2d::ui::Widget*)(this->getChildByName("NODE")->getChildByName("START"));
	sbtn->addTouchEventListener(touchQuit);

    return true;
}
