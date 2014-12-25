#ifndef __GAME_SCENE_H__
#define __GAME_SCENE_H__

class GameScene : public cocos2d::Layer
{
public:
	static cocos2d::Scene* createScene();
	virtual bool init();
	CREATE_FUNC(GameScene);
};

#endif // __GAME_SCENE_H__
