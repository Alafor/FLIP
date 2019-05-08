package com.hk.flip.ws;


import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.hk.flip.daos.MsgDao;

@Repository
public class SocketHandler extends TextWebSocketHandler{
	
	 @Autowired
		SqlSession sqlsession;
		private final Logger logger = LogManager.getLogger(getClass());
	  @Override

		public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {

		}

	  @Override

		public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		  
		}

	 @Override
		protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {

			MsgDao dao = sqlsession.getMapper(MsgDao.class);

			this.logger.info(message.getPayload());

			/*session.sendMessage(new TextMessage(dao.count_receive_note(message.getPayload()))); */

	//현재 수신자에게 몇개의 메세지가 와있는지 디비에서 검색함.

			

		}



	
	

}
