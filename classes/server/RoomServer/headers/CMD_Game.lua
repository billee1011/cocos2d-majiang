--[[
Auto generated file by excel
���룺0--9Ϊȱʡϵͳ�����룬������
MC: �ͻ��˷��͸��������Ϣ��
MS: ����˷��͸��ͻ�����Ϣ��
--]]
CMD_HOTFIX = {}
CMD_HOTFIX.MAIN = 10000 --[pb: MC: ��, MS: ��]
CMD_HOTFIX.SUB_HOTFIX_WORK = 1 --[pb: MC: ��, MS: ��]
CMD_HOTFIX.SUB_HOTFIX_DB = 2 --[pb: MC: ��, MS: ��]

CMD_ERR = {}
CMD_ERR.MAIN = 20000 --[pb: MC: ��, MS: ��]
CMD_ERR.SUB_ERR_MS_ERR = 1 --[pb: MC: ��, MS: ��]

CMD_LOGON = {}
CMD_LOGON.MAIN = 10 --[pb: MC: ��, MS: ��]
CMD_LOGON.SUB_LOGON_USERID =  101

CMD_LOGON.SUB_LOGON_RES = 1001
CMD_LOGON.SUB_LOGON_FINISH = 1010 --��½���,[pb: MC: ��, MS: ��]

CMD_USER = {}
CMD_USER.MAIN = 15 --[pb: MC: ��, MS: ��]
CMD_USER.SUB_MC_TABLE_CREATE = 1 --����
CMD_USER.SUB_MC_TABLE_JOIN = 2 --��������
CMD_USER.SUB_MC_LOCATION = 3--�û���λ��Ϣ

CMD_USER.SUB_MS_TABLE_CREATE = 12
CMD_USER.SUB_MS_TABLE_JOIN = 13

CMD_USER.SUB_MS_TABLE_INFO = 102    --���ӵ���ͨ��Ϣ

CMD_USER.SUB_MS_WEALTH_CHANGE = 201 --��ҲƸ��ı�
CMD_USER.SUB_MS_STATUS_CHANGE = 202 --���״̬�ı�

CMD_GF_FRAME = {}
CMD_GF_FRAME.MAIN = 100
CMD_GF_FRAME.MC_GAMESCENE_LOAD_FINISH = 1  --���ӳ����������
CMD_GF_FRAME.MC_USER_READY = 2  --��Ҿ���׼��
CMD_GF_FRAME.MC_STAND_UP = 3    --�Ƿ����������
CMD_GF_FRAME.MC_DISMISS = 4 --��ɢ����

CMD_GF_FRAME.MCMS_TABLE_TALK = 11

CMD_GF_FRAME.MS_DISMISS = 101
CMD_GF_FRAME.MS_DISMISS_CONFIRM = 102
CMD_GF_FRAME.MS_DISMISS_FAIL = 103

CMD_GF_FRAME.MS_LOCATION = 105
CMD_GF_FRAME.MS_CHEATERES_CONFIRM = 106 --��鵽������������ң�֪ͨ����Ƿ������Ϸ

CMD_GF_FRAME.MS_USER_SITDOWN = 111
CMD_GF_FRAME.MS_USER_READY = 112
CMD_GF_FRAME.MS_STAND_UP = 113
CMD_GF_FRAME.MS_USER_OFFLINE = 114
CMD_GF_FRAME.MS_USER_RECONNECT = 115


MDM_GF_GAME = {}
MDM_GF_GAME.MAIN = 200

CMD_TEST = {}
CMD_TEST.MAIN = 10000 --[pb: MC: ��, MS: ��]
CMD_TEST.SUB_TEST_REQ = 1 --[pb: MC: ��, MS: ��]
CMD_TEST.SUB_TEST_RES = 100 --[pb: MC: ��, MS: ��]
