#ifndef __HELLOWORLD_SCENE_H__
#define __HELLOWORLD_SCENE_H__

class HelloWorld : public cocos2d::Layer
{
public:
	static cocos2d::Scene* createScene();
	virtual bool init();
	CREATE_FUNC(HelloWorld);
};

#endif // __HELLOWORLD_SCENE_H__
