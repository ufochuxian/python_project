.class Lcom/nineoldandroids/a/q$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nineoldandroids/a/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1078
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nineoldandroids/a/q$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nineoldandroids/a/q$1;

    .prologue
    .line 1078
    invoke-direct {p0}, Lcom/nineoldandroids/a/q$a;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 26
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1093
    const/4 v6, 0x1

    .line 1094
    .local v6, "callAgain":Z
    invoke-static {}, Lcom/nineoldandroids/a/q;->D()Ljava/lang/ThreadLocal;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1095
    .local v5, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/a/q;>;"
    invoke-static {}, Lcom/nineoldandroids/a/q;->E()Ljava/lang/ThreadLocal;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 1096
    .local v10, "delayedAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/a/q;>;"
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    .line 1189
    :cond_0
    :goto_0
    return-void

    .line 1100
    :pswitch_0
    invoke-static {}, Lcom/nineoldandroids/a/q;->F()Ljava/lang/ThreadLocal;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 1101
    .local v16, "pendingAnimations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/a/q;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-gtz v19, :cond_1

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_2

    .line 1102
    :cond_1
    const/4 v6, 0x0

    .line 1109
    :cond_2
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_4

    .line 1110
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 1111
    .local v17, "pendingCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/a/q;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 1112
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1113
    .local v7, "count":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v7, :cond_2

    .line 1114
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nineoldandroids/a/q;

    .line 1116
    .local v4, "anim":Lcom/nineoldandroids/a/q;
    invoke-static {v4}, Lcom/nineoldandroids/a/q;->a(Lcom/nineoldandroids/a/q;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-nez v19, :cond_3

    .line 1117
    invoke-static {v4}, Lcom/nineoldandroids/a/q;->b(Lcom/nineoldandroids/a/q;)V

    .line 1113
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1119
    :cond_3
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1127
    .end local v4    # "anim":Lcom/nineoldandroids/a/q;
    .end local v7    # "count":I
    .end local v12    # "i":I
    .end local v16    # "pendingAnimations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/a/q;>;"
    .end local v17    # "pendingCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/a/q;>;"
    :cond_4
    :pswitch_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v8

    .line 1128
    .local v8, "currentTime":J
    invoke-static {}, Lcom/nineoldandroids/a/q;->G()Ljava/lang/ThreadLocal;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    .line 1129
    .local v18, "readyAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/a/q;>;"
    invoke-static {}, Lcom/nineoldandroids/a/q;->H()Ljava/lang/ThreadLocal;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 1133
    .local v11, "endingAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/a/q;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 1134
    .local v14, "numDelayedAnims":I
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_3
    if-ge v12, v14, :cond_6

    .line 1135
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nineoldandroids/a/q;

    .line 1136
    .restart local v4    # "anim":Lcom/nineoldandroids/a/q;
    invoke-static {v4, v8, v9}, Lcom/nineoldandroids/a/q;->a(Lcom/nineoldandroids/a/q;J)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 1137
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1134
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1140
    .end local v4    # "anim":Lcom/nineoldandroids/a/q;
    :cond_6
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 1141
    .local v15, "numReadyAnims":I
    if-lez v15, :cond_8

    .line 1142
    const/4 v12, 0x0

    :goto_4
    if-ge v12, v15, :cond_7

    .line 1143
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nineoldandroids/a/q;

    .line 1144
    .restart local v4    # "anim":Lcom/nineoldandroids/a/q;
    invoke-static {v4}, Lcom/nineoldandroids/a/q;->b(Lcom/nineoldandroids/a/q;)V

    .line 1145
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-static {v4, v0}, Lcom/nineoldandroids/a/q;->a(Lcom/nineoldandroids/a/q;Z)Z

    .line 1146
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1142
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 1148
    .end local v4    # "anim":Lcom/nineoldandroids/a/q;
    :cond_7
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 1153
    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 1154
    .local v13, "numAnims":I
    const/4 v12, 0x0

    .line 1155
    :goto_5
    if-ge v12, v13, :cond_b

    .line 1156
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nineoldandroids/a/q;

    .line 1157
    .restart local v4    # "anim":Lcom/nineoldandroids/a/q;
    invoke-virtual {v4, v8, v9}, Lcom/nineoldandroids/a/q;->c(J)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 1158
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1160
    :cond_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v13, :cond_a

    .line 1161
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 1170
    :cond_a
    add-int/lit8 v13, v13, -0x1

    .line 1171
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1174
    .end local v4    # "anim":Lcom/nineoldandroids/a/q;
    :cond_b
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_d

    .line 1175
    const/4 v12, 0x0

    :goto_6
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v12, v0, :cond_c

    .line 1176
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/nineoldandroids/a/q;

    invoke-static/range {v19 .. v19}, Lcom/nineoldandroids/a/q;->c(Lcom/nineoldandroids/a/q;)V

    .line 1175
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 1178
    :cond_c
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1183
    :cond_d
    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_e

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_0

    .line 1184
    :cond_e
    const/16 v19, 0x1

    const-wide/16 v20, 0x0

    .line 1185
    invoke-static {}, Lcom/nineoldandroids/a/q;->I()J

    move-result-wide v22

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v8

    sub-long v22, v22, v24

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    .line 1184
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/nineoldandroids/a/q$a;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1096
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
