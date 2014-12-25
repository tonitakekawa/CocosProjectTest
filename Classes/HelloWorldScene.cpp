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

	auto touchQuit = [this, director](Ref* pSender, ui::Widget::TouchEventType type){
		if (type == ui::Widget::TouchEventType::ENDED) {
			director->end();
		}
	};

	auto btn = (cocos2d::ui::Widget*)(this->getChildByName("NODE")->getChildByName("BTN"));
	btn->addTouchEventListener(touchQuit);

	auto sbtn = (cocos2d::ui::Widget*)(this->getChildByName("NODE")->getChildByName("START"));
	sbtn->addTouchEventListener(touchQuit);

	/*
    auto label = Label::createWithTTF("Hello World", "fonts/Marker Felt.ttf", 24);
	label->setPosition(
		Vec2(org.x + vsize.width / 2,
		     org.y + vsize.height - label->getContentSize().height));
    this->addChild(label, 1);

    auto sprite = Sprite::create("HelloWorld.png");
	sprite->setPosition(Vec2(vsize.width / 2 + org.x, vsize.height / 2 + org.y));
    this->addChild(sprite, 0);
    */

    return true;
}
