(define (stream turtlebot)
  ;(:stream s-motion
  ;  :inputs (?q1 ?q2)
  ;  :domain (and (Conf ?q1) (Conf ?q2))
  ;  :outputs (?t)
  ;  :certified (and (Traj ?t) (Motion ?q1 ?t ?q2)))

  (:stream test-cfree-traj-conf
    :inputs (?t1 ?q2)
    :domain (and (Traj ?t1) (Conf ?q2))
    :certified (CFreeTrajConf ?t1 ?q2))
  (:stream test-cfree-traj-traj
    :inputs (?t1 ?t2)
    :domain (and (Traj ?t1) (Traj ?t2))
    :certified (CFreeTrajTraj ?t1 ?t2))

  ;(:function (Dist ?q1 ?q2)
  ;  (and (Conf ?q1) (Conf ?q2))
  ;)
)