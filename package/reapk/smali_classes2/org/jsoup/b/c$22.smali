.class final enum Lorg/jsoup/b/c$22;
.super Lorg/jsoup/b/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/b/c;-><init>(Ljava/lang/String;ILorg/jsoup/b/c$1;)V

    return-void
.end method


# virtual methods
.method a(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z
    .locals 42
    .param p1, "t"    # Lorg/jsoup/b/h;
    .param p2, "tb"    # Lorg/jsoup/b/b;

    .prologue
    .line 248
    sget-object v39, Lorg/jsoup/b/c$17;->a:[I

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jsoup/b/h;->a:Lorg/jsoup/b/h$h;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lorg/jsoup/b/h$h;->ordinal()I

    move-result v40

    aget v39, v39, v40

    packed-switch v39, :pswitch_data_0

    .line 754
    :cond_0
    :goto_0
    const/16 v39, 0x1

    :goto_1
    return v39

    .line 250
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/b/h;->k()Lorg/jsoup/b/h$a;

    move-result-object v9

    .line 251
    .local v9, "c":Lorg/jsoup/b/h$a;
    invoke-virtual {v9}, Lorg/jsoup/b/h$a;->m()Ljava/lang/String;

    move-result-object v39

    invoke-static {}, Lorg/jsoup/b/c;->a()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_1

    .line 253
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 254
    const/16 v39, 0x0

    goto :goto_1

    .line 255
    :cond_1
    invoke-static {v9}, Lorg/jsoup/b/c;->a(Lorg/jsoup/b/h;)Z

    move-result v39

    if-eqz v39, :cond_2

    .line 256
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->t()V

    .line 257
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$a;)V

    goto :goto_0

    .line 259
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->t()V

    .line 260
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$a;)V

    .line 261
    const/16 v39, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Z)V

    goto :goto_0

    .line 266
    .end local v9    # "c":Lorg/jsoup/b/h$a;
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/b/h;->i()Lorg/jsoup/b/h$b;

    move-result-object v39

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$b;)V

    goto :goto_0

    .line 270
    :pswitch_2
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 271
    const/16 v39, 0x0

    goto :goto_1

    .line 274
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/b/h;->e()Lorg/jsoup/b/h$f;

    move-result-object v37

    .line 275
    .local v37, "startTag":Lorg/jsoup/b/h$f;
    invoke-virtual/range {v37 .. v37}, Lorg/jsoup/b/h$f;->o()Ljava/lang/String;

    move-result-object v26

    .line 276
    .local v26, "name":Ljava/lang/String;
    const-string v39, "html"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_4

    .line 277
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 279
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->i()Lorg/jsoup/helper/DescendableLinkedList;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lorg/jsoup/helper/DescendableLinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/jsoup/nodes/f;

    .line 280
    .local v19, "html":Lorg/jsoup/nodes/f;
    invoke-virtual/range {v37 .. v37}, Lorg/jsoup/b/h$f;->q()Lorg/jsoup/nodes/b;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lorg/jsoup/nodes/b;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_0

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jsoup/nodes/a;

    .line 281
    .local v7, "attribute":Lorg/jsoup/nodes/a;
    invoke-virtual {v7}, Lorg/jsoup/nodes/a;->a()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v19

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/f;->I(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_3

    .line 282
    invoke-virtual/range {v19 .. v19}, Lorg/jsoup/nodes/f;->N()Lorg/jsoup/nodes/b;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Lorg/jsoup/nodes/b;->a(Lorg/jsoup/nodes/a;)V

    goto :goto_2

    .line 284
    .end local v7    # "attribute":Lorg/jsoup/nodes/a;
    .end local v19    # "html":Lorg/jsoup/nodes/f;
    .end local v21    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-static {}, Lorg/jsoup/b/c$a;->a()[Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_5

    .line 285
    sget-object v39, Lorg/jsoup/b/c$22;->InHead:Lorg/jsoup/b/c;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;Lorg/jsoup/b/c;)Z

    move-result v39

    goto/16 :goto_1

    .line 286
    :cond_5
    const-string v39, "body"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_9

    .line 287
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 288
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->i()Lorg/jsoup/helper/DescendableLinkedList;

    move-result-object v35

    .line 289
    .local v35, "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/f;>;"
    invoke-virtual/range {v35 .. v35}, Ljava/util/LinkedList;->size()I

    move-result v39

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_6

    invoke-virtual/range {v35 .. v35}, Ljava/util/LinkedList;->size()I

    move-result v39

    const/16 v40, 0x2

    move/from16 v0, v39

    move/from16 v1, v40

    if-le v0, v1, :cond_7

    const/16 v39, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lorg/jsoup/nodes/f;

    invoke-virtual/range {v39 .. v39}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v39

    const-string v40, "body"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_7

    .line 291
    :cond_6
    const/16 v39, 0x0

    goto/16 :goto_1

    .line 293
    :cond_7
    const/16 v39, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Z)V

    .line 294
    const/16 v39, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jsoup/nodes/f;

    .line 295
    .local v8, "body":Lorg/jsoup/nodes/f;
    invoke-virtual/range {v37 .. v37}, Lorg/jsoup/b/h$f;->q()Lorg/jsoup/nodes/b;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lorg/jsoup/nodes/b;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21    # "i$":Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_0

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jsoup/nodes/a;

    .line 296
    .restart local v7    # "attribute":Lorg/jsoup/nodes/a;
    invoke-virtual {v7}, Lorg/jsoup/nodes/a;->a()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Lorg/jsoup/nodes/f;->I(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_8

    .line 297
    invoke-virtual {v8}, Lorg/jsoup/nodes/f;->N()Lorg/jsoup/nodes/b;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Lorg/jsoup/nodes/b;->a(Lorg/jsoup/nodes/a;)V

    goto :goto_3

    .line 300
    .end local v7    # "attribute":Lorg/jsoup/nodes/a;
    .end local v8    # "body":Lorg/jsoup/nodes/f;
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v35    # "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/f;>;"
    :cond_9
    const-string v39, "frameset"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_f

    .line 301
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 302
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->i()Lorg/jsoup/helper/DescendableLinkedList;

    move-result-object v35

    .line 303
    .restart local v35    # "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/f;>;"
    invoke-virtual/range {v35 .. v35}, Ljava/util/LinkedList;->size()I

    move-result v39

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_a

    invoke-virtual/range {v35 .. v35}, Ljava/util/LinkedList;->size()I

    move-result v39

    const/16 v40, 0x2

    move/from16 v0, v39

    move/from16 v1, v40

    if-le v0, v1, :cond_b

    const/16 v39, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lorg/jsoup/nodes/f;

    invoke-virtual/range {v39 .. v39}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v39

    const-string v40, "body"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_b

    .line 305
    :cond_a
    const/16 v39, 0x0

    goto/16 :goto_1

    .line 306
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->d()Z

    move-result v39

    if-nez v39, :cond_c

    .line 307
    const/16 v39, 0x0

    goto/16 :goto_1

    .line 309
    :cond_c
    const/16 v39, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lorg/jsoup/nodes/f;

    .line 310
    .local v32, "second":Lorg/jsoup/nodes/f;
    invoke-virtual/range {v32 .. v32}, Lorg/jsoup/nodes/f;->r()Lorg/jsoup/nodes/f;

    move-result-object v39

    if-eqz v39, :cond_d

    .line 311
    invoke-virtual/range {v32 .. v32}, Lorg/jsoup/nodes/f;->V()V

    .line 313
    :cond_d
    :goto_4
    invoke-virtual/range {v35 .. v35}, Ljava/util/LinkedList;->size()I

    move-result v39

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-le v0, v1, :cond_e

    .line 314
    invoke-virtual/range {v35 .. v35}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_4

    .line 315
    :cond_e
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    .line 316
    sget-object v39, Lorg/jsoup/b/c$22;->InFrameset:Lorg/jsoup/b/c;

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    goto/16 :goto_0

    .line 318
    .end local v32    # "second":Lorg/jsoup/nodes/f;
    .end local v35    # "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/f;>;"
    :cond_f
    invoke-static {}, Lorg/jsoup/b/c$a;->b()[Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_11

    .line 319
    const-string v39, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->g(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_10

    .line 320
    new-instance v39, Lorg/jsoup/b/h$e;

    const-string v40, "p"

    invoke-direct/range {v39 .. v40}, Lorg/jsoup/b/h$e;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    .line 322
    :cond_10
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    goto/16 :goto_0

    .line 323
    :cond_11
    invoke-static {}, Lorg/jsoup/b/c$a;->c()[Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_14

    .line 324
    const-string v39, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->g(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_12

    .line 325
    new-instance v39, Lorg/jsoup/b/h$e;

    const-string v40, "p"

    invoke-direct/range {v39 .. v40}, Lorg/jsoup/b/h$e;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    .line 327
    :cond_12
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->x()Lorg/jsoup/nodes/f;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v39

    invoke-static {}, Lorg/jsoup/b/c$a;->c()[Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_13

    .line 328
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 329
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->h()Lorg/jsoup/nodes/f;

    .line 331
    :cond_13
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    goto/16 :goto_0

    .line 332
    :cond_14
    invoke-static {}, Lorg/jsoup/b/c$a;->d()[Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_16

    .line 333
    const-string v39, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->g(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_15

    .line 334
    new-instance v39, Lorg/jsoup/b/h$e;

    const-string v40, "p"

    invoke-direct/range {v39 .. v40}, Lorg/jsoup/b/h$e;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    .line 336
    :cond_15
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    .line 338
    const/16 v39, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Z)V

    goto/16 :goto_0

    .line 339
    :cond_16
    const-string v39, "form"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_19

    .line 340
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->p()Lorg/jsoup/nodes/g;

    move-result-object v39

    if-eqz v39, :cond_17

    .line 341
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 342
    const/16 v39, 0x0

    goto/16 :goto_1

    .line 344
    :cond_17
    const-string v39, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->g(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_18

    .line 345
    new-instance v39, Lorg/jsoup/b/h$e;

    const-string v40, "p"

    invoke-direct/range {v39 .. v40}, Lorg/jsoup/b/h$e;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    .line 347
    :cond_18
    const/16 v39, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$f;Z)Lorg/jsoup/nodes/g;

    goto/16 :goto_0

    .line 348
    :cond_19
    const-string v39, "li"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_1e

    .line 349
    const/16 v39, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Z)V

    .line 350
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->i()Lorg/jsoup/helper/DescendableLinkedList;

    move-result-object v35

    .line 351
    .restart local v35    # "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/f;>;"
    invoke-virtual/range {v35 .. v35}, Ljava/util/LinkedList;->size()I

    move-result v39

    add-int/lit8 v20, v39, -0x1

    .local v20, "i":I
    :goto_5
    if-lez v20, :cond_1a

    .line 352
    move-object/from16 v0, v35

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/jsoup/nodes/f;

    .line 353
    .local v14, "el":Lorg/jsoup/nodes/f;
    invoke-virtual {v14}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v39

    const-string v40, "li"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_1c

    .line 354
    new-instance v39, Lorg/jsoup/b/h$e;

    const-string v40, "li"

    invoke-direct/range {v39 .. v40}, Lorg/jsoup/b/h$e;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    .line 360
    .end local v14    # "el":Lorg/jsoup/nodes/f;
    :cond_1a
    const-string v39, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->g(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_1b

    .line 361
    new-instance v39, Lorg/jsoup/b/h$e;

    const-string v40, "p"

    invoke-direct/range {v39 .. v40}, Lorg/jsoup/b/h$e;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    .line 363
    :cond_1b
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    goto/16 :goto_0

    .line 357
    .restart local v14    # "el":Lorg/jsoup/nodes/f;
    :cond_1c
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lorg/jsoup/b/b;->h(Lorg/jsoup/nodes/f;)Z

    move-result v39

    if-eqz v39, :cond_1d

    invoke-virtual {v14}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v39

    invoke-static {}, Lorg/jsoup/b/c$a;->e()[Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_1a

    .line 351
    :cond_1d
    add-int/lit8 v20, v20, -0x1

    goto :goto_5

    .line 364
    .end local v14    # "el":Lorg/jsoup/nodes/f;
    .end local v20    # "i":I
    .end local v35    # "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/f;>;"
    :cond_1e
    invoke-static {}, Lorg/jsoup/b/c$a;->f()[Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_23

    .line 365
    const/16 v39, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Z)V

    .line 366
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->i()Lorg/jsoup/helper/DescendableLinkedList;

    move-result-object v35

    .line 367
    .restart local v35    # "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/f;>;"
    invoke-virtual/range {v35 .. v35}, Ljava/util/LinkedList;->size()I

    move-result v39

    add-int/lit8 v20, v39, -0x1

    .restart local v20    # "i":I
    :goto_6
    if-lez v20, :cond_1f

    .line 368
    move-object/from16 v0, v35

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/jsoup/nodes/f;

    .line 369
    .restart local v14    # "el":Lorg/jsoup/nodes/f;
    invoke-virtual {v14}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v39

    invoke-static {}, Lorg/jsoup/b/c$a;->f()[Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_21

    .line 370
    new-instance v39, Lorg/jsoup/b/h$e;

    invoke-virtual {v14}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Lorg/jsoup/b/h$e;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    .line 376
    .end local v14    # "el":Lorg/jsoup/nodes/f;
    :cond_1f
    const-string v39, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->g(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_20

    .line 377
    new-instance v39, Lorg/jsoup/b/h$e;

    const-string v40, "p"

    invoke-direct/range {v39 .. v40}, Lorg/jsoup/b/h$e;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    .line 379
    :cond_20
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    goto/16 :goto_0

    .line 373
    .restart local v14    # "el":Lorg/jsoup/nodes/f;
    :cond_21
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lorg/jsoup/b/b;->h(Lorg/jsoup/nodes/f;)Z

    move-result v39

    if-eqz v39, :cond_22

    invoke-virtual {v14}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v39

    invoke-static {}, Lorg/jsoup/b/c$a;->e()[Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_1f

    .line 367
    :cond_22
    add-int/lit8 v20, v20, -0x1

    goto :goto_6

    .line 380
    .end local v14    # "el":Lorg/jsoup/nodes/f;
    .end local v20    # "i":I
    .end local v35    # "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/f;>;"
    :cond_23
    const-string v39, "plaintext"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_25

    .line 381
    const-string v39, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->g(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_24

    .line 382
    new-instance v39, Lorg/jsoup/b/h$e;

    const-string v40, "p"

    invoke-direct/range {v39 .. v40}, Lorg/jsoup/b/h$e;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    .line 384
    :cond_24
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    .line 385
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jsoup/b/b;->d:Lorg/jsoup/b/j;

    move-object/from16 v39, v0

    sget-object v40, Lorg/jsoup/b/k;->PLAINTEXT:Lorg/jsoup/b/k;

    invoke-virtual/range {v39 .. v40}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    goto/16 :goto_0

    .line 386
    :cond_25
    const-string v39, "button"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_27

    .line 387
    const-string v39, "button"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->g(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_26

    .line 389
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 390
    new-instance v39, Lorg/jsoup/b/h$e;

    const-string v40, "button"

    invoke-direct/range {v39 .. v40}, Lorg/jsoup/b/h$e;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    .line 391
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    goto/16 :goto_0

    .line 393
    :cond_26
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->t()V

    .line 394
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    .line 395
    const/16 v39, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Z)V

    goto/16 :goto_0

    .line 397
    :cond_27
    const-string v39, "a"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_29

    .line 398
    const-string v39, "a"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->k(Ljava/lang/String;)Lorg/jsoup/nodes/f;

    move-result-object v39

    if-eqz v39, :cond_28

    .line 399
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 400
    new-instance v39, Lorg/jsoup/b/h$e;

    const-string v40, "a"

    invoke-direct/range {v39 .. v40}, Lorg/jsoup/b/h$e;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    .line 403
    const-string v39, "a"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->b(Ljava/lang/String;)Lorg/jsoup/nodes/f;

    move-result-object v30

    .line 404
    .local v30, "remainingA":Lorg/jsoup/nodes/f;
    if-eqz v30, :cond_28

    .line 405
    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->j(Lorg/jsoup/nodes/f;)V

    .line 406
    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->e(Lorg/jsoup/nodes/f;)Z

    .line 409
    .end local v30    # "remainingA":Lorg/jsoup/nodes/f;
    :cond_28
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->t()V

    .line 410
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    move-result-object v3

    .line 411
    .local v3, "a":Lorg/jsoup/nodes/f;
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/jsoup/b/b;->i(Lorg/jsoup/nodes/f;)V

    goto/16 :goto_0

    .line 412
    .end local v3    # "a":Lorg/jsoup/nodes/f;
    :cond_29
    invoke-static {}, Lorg/jsoup/b/c$a;->g()[Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_2a

    .line 413
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->t()V

    .line 414
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    move-result-object v14

    .line 415
    .restart local v14    # "el":Lorg/jsoup/nodes/f;
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lorg/jsoup/b/b;->i(Lorg/jsoup/nodes/f;)V

    goto/16 :goto_0

    .line 416
    .end local v14    # "el":Lorg/jsoup/nodes/f;
    :cond_2a
    const-string v39, "nobr"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_2c

    .line 417
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->t()V

    .line 418
    const-string v39, "nobr"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->e(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_2b

    .line 419
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 420
    new-instance v39, Lorg/jsoup/b/h$e;

    const-string v40, "nobr"

    invoke-direct/range {v39 .. v40}, Lorg/jsoup/b/h$e;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    .line 421
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->t()V

    .line 423
    :cond_2b
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    move-result-object v14

    .line 424
    .restart local v14    # "el":Lorg/jsoup/nodes/f;
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lorg/jsoup/b/b;->i(Lorg/jsoup/nodes/f;)V

    goto/16 :goto_0

    .line 425
    .end local v14    # "el":Lorg/jsoup/nodes/f;
    :cond_2c
    invoke-static {}, Lorg/jsoup/b/c$a;->h()[Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_2d

    .line 426
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->t()V

    .line 427
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    .line 428
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->v()V

    .line 429
    const/16 v39, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Z)V

    goto/16 :goto_0

    .line 430
    :cond_2d
    const-string v39, "table"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_2f

    .line 431
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->e()Lorg/jsoup/nodes/Document;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lorg/jsoup/nodes/Document;->j()Lorg/jsoup/nodes/Document$QuirksMode;

    move-result-object v39

    sget-object v40, Lorg/jsoup/nodes/Document$QuirksMode;->quirks:Lorg/jsoup/nodes/Document$QuirksMode;

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    if-eq v0, v1, :cond_2e

    const-string v39, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->g(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_2e

    .line 432
    new-instance v39, Lorg/jsoup/b/h$e;

    const-string v40, "p"

    invoke-direct/range {v39 .. v40}, Lorg/jsoup/b/h$e;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    .line 434
    :cond_2e
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    .line 435
    const/16 v39, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Z)V

    .line 436
    sget-object v39, Lorg/jsoup/b/c$22;->InTable:Lorg/jsoup/b/c;

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    goto/16 :goto_0

    .line 437
    :cond_2f
    invoke-static {}, Lorg/jsoup/b/c$a;->i()[Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_30

    .line 438
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->t()V

    .line 439
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    .line 440
    const/16 v39, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Z)V

    goto/16 :goto_0

    .line 441
    :cond_30
    const-string v39, "input"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_31

    .line 442
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->t()V

    .line 443
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    move-result-object v14

    .line 444
    .restart local v14    # "el":Lorg/jsoup/nodes/f;
    const-string v39, "type"

    move-object/from16 v0, v39

    invoke-virtual {v14, v0}, Lorg/jsoup/nodes/f;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const-string v40, "hidden"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_0

    .line 445
    const/16 v39, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Z)V

    goto/16 :goto_0

    .line 446
    .end local v14    # "el":Lorg/jsoup/nodes/f;
    :cond_31
    invoke-static {}, Lorg/jsoup/b/c$a;->j()[Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_32

    .line 447
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    goto/16 :goto_0

    .line 448
    :cond_32
    const-string v39, "hr"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_34

    .line 449
    const-string v39, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->g(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_33

    .line 450
    new-instance v39, Lorg/jsoup/b/h$e;

    const-string v40, "p"

    invoke-direct/range {v39 .. v40}, Lorg/jsoup/b/h$e;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    .line 452
    :cond_33
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    .line 453
    const/16 v39, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Z)V

    goto/16 :goto_0

    .line 454
    :cond_34
    const-string v39, "image"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_35

    .line 456
    const-string v39, "img"

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/h$f;->a(Ljava/lang/String;)Lorg/jsoup/b/h$g;

    .line 457
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    move-result v39

    goto/16 :goto_1

    .line 458
    :cond_35
    const-string v39, "isindex"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_3b

    .line 460
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 461
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->p()Lorg/jsoup/nodes/g;

    move-result-object v39

    if-eqz v39, :cond_36

    .line 462
    const/16 v39, 0x0

    goto/16 :goto_1

    .line 464
    :cond_36
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jsoup/b/b;->d:Lorg/jsoup/b/j;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lorg/jsoup/b/j;->c()V

    .line 465
    new-instance v39, Lorg/jsoup/b/h$f;

    const-string v40, "form"

    invoke-direct/range {v39 .. v40}, Lorg/jsoup/b/h$f;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    .line 466
    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/jsoup/b/h$f;->d:Lorg/jsoup/nodes/b;

    move-object/from16 v39, v0

    const-string v40, "action"

    invoke-virtual/range {v39 .. v40}, Lorg/jsoup/nodes/b;->c(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_37

    .line 467
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->p()Lorg/jsoup/nodes/g;

    move-result-object v16

    .line 468
    .local v16, "form":Lorg/jsoup/nodes/f;
    const-string v39, "action"

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/jsoup/b/h$f;->d:Lorg/jsoup/nodes/b;

    move-object/from16 v40, v0

    const-string v41, "action"

    invoke-virtual/range {v40 .. v41}, Lorg/jsoup/nodes/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v16

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/nodes/f;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/f;

    .line 470
    .end local v16    # "form":Lorg/jsoup/nodes/f;
    :cond_37
    new-instance v39, Lorg/jsoup/b/h$f;

    const-string v40, "hr"

    invoke-direct/range {v39 .. v40}, Lorg/jsoup/b/h$f;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    .line 471
    new-instance v39, Lorg/jsoup/b/h$f;

    const-string v40, "label"

    invoke-direct/range {v39 .. v40}, Lorg/jsoup/b/h$f;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    .line 473
    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/jsoup/b/h$f;->d:Lorg/jsoup/nodes/b;

    move-object/from16 v39, v0

    const-string v40, "prompt"

    invoke-virtual/range {v39 .. v40}, Lorg/jsoup/nodes/b;->c(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_39

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/jsoup/b/h$f;->d:Lorg/jsoup/nodes/b;

    move-object/from16 v39, v0

    const-string v40, "prompt"

    invoke-virtual/range {v39 .. v40}, Lorg/jsoup/nodes/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 477
    .local v29, "prompt":Ljava/lang/String;
    :goto_7
    new-instance v39, Lorg/jsoup/b/h$a;

    move-object/from16 v0, v39

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lorg/jsoup/b/h$a;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    .line 480
    new-instance v22, Lorg/jsoup/nodes/b;

    invoke-direct/range {v22 .. v22}, Lorg/jsoup/nodes/b;-><init>()V

    .line 481
    .local v22, "inputAttribs":Lorg/jsoup/nodes/b;
    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/jsoup/b/h$f;->d:Lorg/jsoup/nodes/b;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lorg/jsoup/nodes/b;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21    # "i$":Ljava/util/Iterator;
    :cond_38
    :goto_8
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_3a

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jsoup/nodes/a;

    .line 482
    .local v6, "attr":Lorg/jsoup/nodes/a;
    invoke-virtual {v6}, Lorg/jsoup/nodes/a;->a()Ljava/lang/String;

    move-result-object v39

    invoke-static {}, Lorg/jsoup/b/c$a;->k()[Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_38

    .line 483
    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lorg/jsoup/nodes/b;->a(Lorg/jsoup/nodes/a;)V

    goto :goto_8

    .line 473
    .end local v6    # "attr":Lorg/jsoup/nodes/a;
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v22    # "inputAttribs":Lorg/jsoup/nodes/b;
    .end local v29    # "prompt":Ljava/lang/String;
    :cond_39
    const-string v29, "This is a searchable index. Enter search keywords: "

    goto :goto_7

    .line 485
    .restart local v21    # "i$":Ljava/util/Iterator;
    .restart local v22    # "inputAttribs":Lorg/jsoup/nodes/b;
    .restart local v29    # "prompt":Ljava/lang/String;
    :cond_3a
    const-string v39, "name"

    const-string v40, "isindex"

    move-object/from16 v0, v22

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/nodes/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    new-instance v39, Lorg/jsoup/b/h$f;

    const-string v40, "input"

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lorg/jsoup/b/h$f;-><init>(Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    .line 487
    new-instance v39, Lorg/jsoup/b/h$e;

    const-string v40, "label"

    invoke-direct/range {v39 .. v40}, Lorg/jsoup/b/h$e;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    .line 488
    new-instance v39, Lorg/jsoup/b/h$f;

    const-string v40, "hr"

    invoke-direct/range {v39 .. v40}, Lorg/jsoup/b/h$f;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    .line 489
    new-instance v39, Lorg/jsoup/b/h$e;

    const-string v40, "form"

    invoke-direct/range {v39 .. v40}, Lorg/jsoup/b/h$e;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    goto/16 :goto_0

    .line 490
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v22    # "inputAttribs":Lorg/jsoup/nodes/b;
    .end local v29    # "prompt":Ljava/lang/String;
    :cond_3b
    const-string v39, "textarea"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_3c

    .line 491
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    .line 493
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jsoup/b/b;->d:Lorg/jsoup/b/j;

    move-object/from16 v39, v0

    sget-object v40, Lorg/jsoup/b/k;->Rcdata:Lorg/jsoup/b/k;

    invoke-virtual/range {v39 .. v40}, Lorg/jsoup/b/j;->a(Lorg/jsoup/b/k;)V

    .line 494
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->b()V

    .line 495
    const/16 v39, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Z)V

    .line 496
    sget-object v39, Lorg/jsoup/b/c$22;->Text:Lorg/jsoup/b/c;

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    goto/16 :goto_0

    .line 497
    :cond_3c
    const-string v39, "xmp"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_3e

    .line 498
    const-string v39, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->g(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_3d

    .line 499
    new-instance v39, Lorg/jsoup/b/h$e;

    const-string v40, "p"

    invoke-direct/range {v39 .. v40}, Lorg/jsoup/b/h$e;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    .line 501
    :cond_3d
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->t()V

    .line 502
    const/16 v39, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Z)V

    .line 503
    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/jsoup/b/c;->b(Lorg/jsoup/b/h$f;Lorg/jsoup/b/b;)V

    goto/16 :goto_0

    .line 504
    :cond_3e
    const-string v39, "iframe"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_3f

    .line 505
    const/16 v39, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Z)V

    .line 506
    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/jsoup/b/c;->b(Lorg/jsoup/b/h$f;Lorg/jsoup/b/b;)V

    goto/16 :goto_0

    .line 507
    :cond_3f
    const-string v39, "noembed"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_40

    .line 509
    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/jsoup/b/c;->b(Lorg/jsoup/b/h$f;Lorg/jsoup/b/b;)V

    goto/16 :goto_0

    .line 510
    :cond_40
    const-string v39, "select"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_43

    .line 511
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->t()V

    .line 512
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    .line 513
    const/16 v39, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Z)V

    .line 515
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->a()Lorg/jsoup/b/c;

    move-result-object v38

    .line 516
    .local v38, "state":Lorg/jsoup/b/c;
    sget-object v39, Lorg/jsoup/b/c$22;->InTable:Lorg/jsoup/b/c;

    invoke-virtual/range {v38 .. v39}, Lorg/jsoup/b/c;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_41

    sget-object v39, Lorg/jsoup/b/c$22;->InCaption:Lorg/jsoup/b/c;

    invoke-virtual/range {v38 .. v39}, Lorg/jsoup/b/c;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_41

    sget-object v39, Lorg/jsoup/b/c$22;->InTableBody:Lorg/jsoup/b/c;

    invoke-virtual/range {v38 .. v39}, Lorg/jsoup/b/c;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_41

    sget-object v39, Lorg/jsoup/b/c$22;->InRow:Lorg/jsoup/b/c;

    invoke-virtual/range {v38 .. v39}, Lorg/jsoup/b/c;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_41

    sget-object v39, Lorg/jsoup/b/c$22;->InCell:Lorg/jsoup/b/c;

    invoke-virtual/range {v38 .. v39}, Lorg/jsoup/b/c;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_42

    .line 517
    :cond_41
    sget-object v39, Lorg/jsoup/b/c$22;->InSelectInTable:Lorg/jsoup/b/c;

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    goto/16 :goto_0

    .line 519
    :cond_42
    sget-object v39, Lorg/jsoup/b/c$22;->InSelect:Lorg/jsoup/b/c;

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    goto/16 :goto_0

    .line 520
    .end local v38    # "state":Lorg/jsoup/b/c;
    :cond_43
    invoke-static {}, Lorg/jsoup/b/c$a;->l()[Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_45

    .line 521
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->x()Lorg/jsoup/nodes/f;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v39

    const-string v40, "option"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_44

    .line 522
    new-instance v39, Lorg/jsoup/b/h$e;

    const-string v40, "option"

    invoke-direct/range {v39 .. v40}, Lorg/jsoup/b/h$e;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    .line 523
    :cond_44
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->t()V

    .line 524
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    goto/16 :goto_0

    .line 525
    :cond_45
    invoke-static {}, Lorg/jsoup/b/c$a;->m()[Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_47

    .line 526
    const-string v39, "ruby"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->e(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_0

    .line 527
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->s()V

    .line 528
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->x()Lorg/jsoup/nodes/f;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v39

    const-string v40, "ruby"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_46

    .line 529
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 530
    const-string v39, "ruby"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->d(Ljava/lang/String;)V

    .line 532
    :cond_46
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    goto/16 :goto_0

    .line 534
    :cond_47
    const-string v39, "math"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_48

    .line 535
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->t()V

    .line 537
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    .line 538
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jsoup/b/b;->d:Lorg/jsoup/b/j;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lorg/jsoup/b/j;->c()V

    goto/16 :goto_0

    .line 539
    :cond_48
    const-string v39, "svg"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_49

    .line 540
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->t()V

    .line 542
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    .line 543
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jsoup/b/b;->d:Lorg/jsoup/b/j;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lorg/jsoup/b/j;->c()V

    goto/16 :goto_0

    .line 544
    :cond_49
    invoke-static {}, Lorg/jsoup/b/c$a;->n()[Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_4a

    .line 545
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 546
    const/16 v39, 0x0

    goto/16 :goto_1

    .line 548
    :cond_4a
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->t()V

    .line 549
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    goto/16 :goto_0

    .line 554
    .end local v26    # "name":Ljava/lang/String;
    .end local v37    # "startTag":Lorg/jsoup/b/h$f;
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/b/h;->g()Lorg/jsoup/b/h$e;

    move-result-object v15

    .line 555
    .local v15, "endTag":Lorg/jsoup/b/h$e;
    invoke-virtual {v15}, Lorg/jsoup/b/h$e;->o()Ljava/lang/String;

    move-result-object v26

    .line 556
    .restart local v26    # "name":Ljava/lang/String;
    const-string v39, "body"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_4c

    .line 557
    const-string v39, "body"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->e(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_4b

    .line 558
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 559
    const/16 v39, 0x0

    goto/16 :goto_1

    .line 562
    :cond_4b
    sget-object v39, Lorg/jsoup/b/c$22;->AfterBody:Lorg/jsoup/b/c;

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/c;)V

    goto/16 :goto_0

    .line 564
    :cond_4c
    const-string v39, "html"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_4d

    .line 565
    new-instance v39, Lorg/jsoup/b/h$e;

    const-string v40, "body"

    invoke-direct/range {v39 .. v40}, Lorg/jsoup/b/h$e;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    move-result v28

    .line 566
    .local v28, "notIgnored":Z
    if-eqz v28, :cond_0

    .line 567
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    move-result v39

    goto/16 :goto_1

    .line 568
    .end local v28    # "notIgnored":Z
    :cond_4d
    invoke-static {}, Lorg/jsoup/b/c$a;->o()[Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_50

    .line 569
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->e(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_4e

    .line 571
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 572
    const/16 v39, 0x0

    goto/16 :goto_1

    .line 574
    :cond_4e
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->s()V

    .line 575
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->x()Lorg/jsoup/nodes/f;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_4f

    .line 576
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 577
    :cond_4f
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 579
    :cond_50
    const-string v39, "form"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_54

    .line 580
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->p()Lorg/jsoup/nodes/g;

    move-result-object v13

    .line 581
    .local v13, "currentForm":Lorg/jsoup/nodes/f;
    const/16 v39, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/nodes/g;)V

    .line 582
    if-eqz v13, :cond_51

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->e(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_52

    .line 583
    :cond_51
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 584
    const/16 v39, 0x0

    goto/16 :goto_1

    .line 586
    :cond_52
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->s()V

    .line 587
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->x()Lorg/jsoup/nodes/f;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_53

    .line 588
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 590
    :cond_53
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lorg/jsoup/b/b;->e(Lorg/jsoup/nodes/f;)Z

    goto/16 :goto_0

    .line 592
    .end local v13    # "currentForm":Lorg/jsoup/nodes/f;
    :cond_54
    const-string v39, "p"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_57

    .line 593
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->g(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_55

    .line 594
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 595
    new-instance v39, Lorg/jsoup/b/h$f;

    move-object/from16 v0, v39

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lorg/jsoup/b/h$f;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    .line 596
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    move-result v39

    goto/16 :goto_1

    .line 598
    :cond_55
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->j(Ljava/lang/String;)V

    .line 599
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->x()Lorg/jsoup/nodes/f;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_56

    .line 600
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 601
    :cond_56
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 603
    :cond_57
    const-string v39, "li"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_5a

    .line 604
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->f(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_58

    .line 605
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 606
    const/16 v39, 0x0

    goto/16 :goto_1

    .line 608
    :cond_58
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->j(Ljava/lang/String;)V

    .line 609
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->x()Lorg/jsoup/nodes/f;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_59

    .line 610
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 611
    :cond_59
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 613
    :cond_5a
    invoke-static {}, Lorg/jsoup/b/c$a;->f()[Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_5d

    .line 614
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->e(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_5b

    .line 615
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 616
    const/16 v39, 0x0

    goto/16 :goto_1

    .line 618
    :cond_5b
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->j(Ljava/lang/String;)V

    .line 619
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->x()Lorg/jsoup/nodes/f;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_5c

    .line 620
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 621
    :cond_5c
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 623
    :cond_5d
    invoke-static {}, Lorg/jsoup/b/c$a;->c()[Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_60

    .line 624
    invoke-static {}, Lorg/jsoup/b/c$a;->c()[Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->b([Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_5e

    .line 625
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 626
    const/16 v39, 0x0

    goto/16 :goto_1

    .line 628
    :cond_5e
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->j(Ljava/lang/String;)V

    .line 629
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->x()Lorg/jsoup/nodes/f;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_5f

    .line 630
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 631
    :cond_5f
    invoke-static {}, Lorg/jsoup/b/c$a;->c()[Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 633
    :cond_60
    const-string v39, "sarcasm"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_61

    .line 635
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/b/c$22;->b(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z

    move-result v39

    goto/16 :goto_1

    .line 636
    :cond_61
    invoke-static {}, Lorg/jsoup/b/c$a;->p()[Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_74

    .line 639
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_9
    const/16 v39, 0x8

    move/from16 v0, v20

    move/from16 v1, v39

    if-ge v0, v1, :cond_0

    .line 640
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->k(Ljava/lang/String;)Lorg/jsoup/nodes/f;

    move-result-object v17

    .line 641
    .local v17, "formatEl":Lorg/jsoup/nodes/f;
    if-nez v17, :cond_62

    .line 642
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/b/c$22;->b(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z

    move-result v39

    goto/16 :goto_1

    .line 643
    :cond_62
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->d(Lorg/jsoup/nodes/f;)Z

    move-result v39

    if-nez v39, :cond_63

    .line 644
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 645
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->j(Lorg/jsoup/nodes/f;)V

    .line 646
    const/16 v39, 0x1

    goto/16 :goto_1

    .line 647
    :cond_63
    invoke-virtual/range {v17 .. v17}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->e(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_64

    .line 648
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 649
    const/16 v39, 0x0

    goto/16 :goto_1

    .line 650
    :cond_64
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->x()Lorg/jsoup/nodes/f;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_65

    .line 651
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 653
    :cond_65
    const/16 v18, 0x0

    .line 654
    .local v18, "furthestBlock":Lorg/jsoup/nodes/f;
    const/4 v12, 0x0

    .line 655
    .local v12, "commonAncestor":Lorg/jsoup/nodes/f;
    const/16 v33, 0x0

    .line 656
    .local v33, "seenFormattingElement":Z
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->i()Lorg/jsoup/helper/DescendableLinkedList;

    move-result-object v35

    .line 659
    .restart local v35    # "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/f;>;"
    invoke-virtual/range {v35 .. v35}, Ljava/util/LinkedList;->size()I

    move-result v36

    .line 660
    .local v36, "stackSize":I
    const/16 v34, 0x0

    .local v34, "si":I
    :goto_a
    move/from16 v0, v34

    move/from16 v1, v36

    if-ge v0, v1, :cond_68

    const/16 v39, 0x40

    move/from16 v0, v34

    move/from16 v1, v39

    if-ge v0, v1, :cond_68

    .line 661
    move-object/from16 v0, v35

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/jsoup/nodes/f;

    .line 662
    .restart local v14    # "el":Lorg/jsoup/nodes/f;
    move-object/from16 v0, v17

    if-ne v14, v0, :cond_67

    .line 663
    add-int/lit8 v39, v34, -0x1

    move-object/from16 v0, v35

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "commonAncestor":Lorg/jsoup/nodes/f;
    check-cast v12, Lorg/jsoup/nodes/f;

    .line 664
    .restart local v12    # "commonAncestor":Lorg/jsoup/nodes/f;
    const/16 v33, 0x1

    .line 660
    :cond_66
    add-int/lit8 v34, v34, 0x1

    goto :goto_a

    .line 665
    :cond_67
    if-eqz v33, :cond_66

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lorg/jsoup/b/b;->h(Lorg/jsoup/nodes/f;)Z

    move-result v39

    if-eqz v39, :cond_66

    .line 666
    move-object/from16 v18, v14

    .line 670
    .end local v14    # "el":Lorg/jsoup/nodes/f;
    :cond_68
    if-nez v18, :cond_69

    .line 671
    invoke-virtual/range {v17 .. v17}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->c(Ljava/lang/String;)V

    .line 672
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->j(Lorg/jsoup/nodes/f;)V

    .line 673
    const/16 v39, 0x1

    goto/16 :goto_1

    .line 678
    :cond_69
    move-object/from16 v27, v18

    .line 679
    .local v27, "node":Lorg/jsoup/nodes/f;
    move-object/from16 v24, v18

    .line 681
    .local v24, "lastNode":Lorg/jsoup/nodes/f;
    const/16 v23, 0x0

    .local v23, "j":I
    :goto_b
    const/16 v39, 0x3

    move/from16 v0, v23

    move/from16 v1, v39

    if-ge v0, v1, :cond_6c

    .line 682
    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->d(Lorg/jsoup/nodes/f;)Z

    move-result v39

    if-eqz v39, :cond_6a

    .line 683
    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->f(Lorg/jsoup/nodes/f;)Lorg/jsoup/nodes/f;

    move-result-object v27

    .line 684
    :cond_6a
    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->k(Lorg/jsoup/nodes/f;)Z

    move-result v39

    if-nez v39, :cond_6b

    .line 685
    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->e(Lorg/jsoup/nodes/f;)Z

    .line 681
    :goto_c
    add-int/lit8 v23, v23, 0x1

    goto :goto_b

    .line 687
    :cond_6b
    move-object/from16 v0, v27

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_6e

    .line 706
    :cond_6c
    invoke-virtual {v12}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v39

    invoke-static {}, Lorg/jsoup/b/c$a;->q()[Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_71

    .line 707
    invoke-virtual/range {v24 .. v24}, Lorg/jsoup/nodes/f;->r()Lorg/jsoup/nodes/f;

    move-result-object v39

    if-eqz v39, :cond_6d

    .line 708
    invoke-virtual/range {v24 .. v24}, Lorg/jsoup/nodes/f;->V()V

    .line 709
    :cond_6d
    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/nodes/h;)V

    .line 716
    :goto_d
    new-instance v4, Lorg/jsoup/nodes/f;

    invoke-virtual/range {v17 .. v17}, Lorg/jsoup/nodes/f;->n()Lorg/jsoup/b/g;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->f()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-direct {v4, v0, v1}, Lorg/jsoup/nodes/f;-><init>(Lorg/jsoup/b/g;Ljava/lang/String;)V

    .line 717
    .local v4, "adopter":Lorg/jsoup/nodes/f;
    invoke-virtual {v4}, Lorg/jsoup/nodes/f;->N()Lorg/jsoup/nodes/b;

    move-result-object v39

    invoke-virtual/range {v17 .. v17}, Lorg/jsoup/nodes/f;->N()Lorg/jsoup/nodes/b;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Lorg/jsoup/nodes/b;->a(Lorg/jsoup/nodes/b;)V

    .line 718
    invoke-virtual/range {v18 .. v18}, Lorg/jsoup/nodes/f;->P()Ljava/util/List;

    move-result-object v39

    invoke-virtual/range {v18 .. v18}, Lorg/jsoup/nodes/f;->R()I

    move-result v40

    move/from16 v0, v40

    new-array v0, v0, [Lorg/jsoup/nodes/h;

    move-object/from16 v40, v0

    invoke-interface/range {v39 .. v40}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lorg/jsoup/nodes/h;

    .line 719
    .local v11, "childNodes":[Lorg/jsoup/nodes/h;
    move-object v5, v11

    .local v5, "arr$":[Lorg/jsoup/nodes/h;
    array-length v0, v5

    move/from16 v25, v0

    .local v25, "len$":I
    const/16 v21, 0x0

    .local v21, "i$":I
    :goto_e
    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_73

    aget-object v10, v5, v21

    .line 720
    .local v10, "childNode":Lorg/jsoup/nodes/h;
    invoke-virtual {v4, v10}, Lorg/jsoup/nodes/f;->a(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/f;

    .line 719
    add-int/lit8 v21, v21, 0x1

    goto :goto_e

    .line 690
    .end local v4    # "adopter":Lorg/jsoup/nodes/f;
    .end local v5    # "arr$":[Lorg/jsoup/nodes/h;
    .end local v10    # "childNode":Lorg/jsoup/nodes/h;
    .end local v11    # "childNodes":[Lorg/jsoup/nodes/h;
    .end local v21    # "i$":I
    .end local v25    # "len$":I
    :cond_6e
    new-instance v31, Lorg/jsoup/nodes/f;

    invoke-virtual/range {v27 .. v27}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lorg/jsoup/b/g;->a(Ljava/lang/String;)Lorg/jsoup/b/g;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->f()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v31

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/f;-><init>(Lorg/jsoup/b/g;Ljava/lang/String;)V

    .line 691
    .local v31, "replacement":Lorg/jsoup/nodes/f;
    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/b/b;->c(Lorg/jsoup/nodes/f;Lorg/jsoup/nodes/f;)V

    .line 692
    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/b/b;->b(Lorg/jsoup/nodes/f;Lorg/jsoup/nodes/f;)V

    .line 693
    move-object/from16 v27, v31

    .line 695
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_6f

    .line 699
    :cond_6f
    invoke-virtual/range {v24 .. v24}, Lorg/jsoup/nodes/f;->r()Lorg/jsoup/nodes/f;

    move-result-object v39

    if-eqz v39, :cond_70

    .line 700
    invoke-virtual/range {v24 .. v24}, Lorg/jsoup/nodes/f;->V()V

    .line 701
    :cond_70
    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/f;->a(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/f;

    .line 703
    move-object/from16 v24, v27

    goto/16 :goto_c

    .line 711
    .end local v31    # "replacement":Lorg/jsoup/nodes/f;
    :cond_71
    invoke-virtual/range {v24 .. v24}, Lorg/jsoup/nodes/f;->r()Lorg/jsoup/nodes/f;

    move-result-object v39

    if-eqz v39, :cond_72

    .line 712
    invoke-virtual/range {v24 .. v24}, Lorg/jsoup/nodes/f;->V()V

    .line 713
    :cond_72
    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lorg/jsoup/nodes/f;->a(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/f;

    goto/16 :goto_d

    .line 722
    .restart local v4    # "adopter":Lorg/jsoup/nodes/f;
    .restart local v5    # "arr$":[Lorg/jsoup/nodes/h;
    .restart local v11    # "childNodes":[Lorg/jsoup/nodes/h;
    .restart local v21    # "i$":I
    .restart local v25    # "len$":I
    :cond_73
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/jsoup/nodes/f;->a(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/f;

    .line 723
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->j(Lorg/jsoup/nodes/f;)V

    .line 725
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->e(Lorg/jsoup/nodes/f;)Z

    .line 726
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lorg/jsoup/b/b;->a(Lorg/jsoup/nodes/f;Lorg/jsoup/nodes/f;)V

    .line 639
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_9

    .line 728
    .end local v4    # "adopter":Lorg/jsoup/nodes/f;
    .end local v5    # "arr$":[Lorg/jsoup/nodes/h;
    .end local v11    # "childNodes":[Lorg/jsoup/nodes/h;
    .end local v12    # "commonAncestor":Lorg/jsoup/nodes/f;
    .end local v17    # "formatEl":Lorg/jsoup/nodes/f;
    .end local v18    # "furthestBlock":Lorg/jsoup/nodes/f;
    .end local v20    # "i":I
    .end local v21    # "i$":I
    .end local v23    # "j":I
    .end local v24    # "lastNode":Lorg/jsoup/nodes/f;
    .end local v25    # "len$":I
    .end local v27    # "node":Lorg/jsoup/nodes/f;
    .end local v33    # "seenFormattingElement":Z
    .end local v34    # "si":I
    .end local v35    # "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/f;>;"
    .end local v36    # "stackSize":I
    :cond_74
    invoke-static {}, Lorg/jsoup/b/c$a;->h()[Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_77

    .line 729
    const-string v39, "name"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->e(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_0

    .line 730
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->e(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_75

    .line 731
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 732
    const/16 v39, 0x0

    goto/16 :goto_1

    .line 734
    :cond_75
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->s()V

    .line 735
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->x()Lorg/jsoup/nodes/f;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_76

    .line 736
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 737
    :cond_76
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->c(Ljava/lang/String;)V

    .line 738
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/b/b;->u()V

    goto/16 :goto_0

    .line 740
    :cond_77
    const-string v39, "br"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_78

    .line 741
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 742
    new-instance v39, Lorg/jsoup/b/h$f;

    const-string v40, "br"

    invoke-direct/range {v39 .. v40}, Lorg/jsoup/b/h$f;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    .line 743
    const/16 v39, 0x0

    goto/16 :goto_1

    .line 745
    :cond_78
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/b/c$22;->b(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z

    move-result v39

    goto/16 :goto_1

    .line 248
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method b(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z
    .locals 5
    .param p1, "t"    # Lorg/jsoup/b/h;
    .param p2, "tb"    # Lorg/jsoup/b/b;

    .prologue
    .line 758
    invoke-virtual {p1}, Lorg/jsoup/b/h;->g()Lorg/jsoup/b/h$e;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/b/h$e;->o()Ljava/lang/String;

    move-result-object v1

    .line 759
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/jsoup/b/b;->i()Lorg/jsoup/helper/DescendableLinkedList;

    move-result-object v3

    .line 760
    .local v3, "stack":Lorg/jsoup/helper/DescendableLinkedList;, "Lorg/jsoup/helper/DescendableLinkedList<Lorg/jsoup/nodes/f;>;"
    invoke-virtual {v3}, Lorg/jsoup/helper/DescendableLinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 761
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jsoup/nodes/f;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 762
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/f;

    .line 763
    .local v2, "node":Lorg/jsoup/nodes/f;
    invoke-virtual {v2}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 764
    invoke-virtual {p2, v1}, Lorg/jsoup/b/b;->j(Ljava/lang/String;)V

    .line 765
    invoke-virtual {p2}, Lorg/jsoup/b/b;->x()Lorg/jsoup/nodes/f;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 766
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 767
    :cond_1
    invoke-virtual {p2, v1}, Lorg/jsoup/b/b;->c(Ljava/lang/String;)V

    .line 776
    .end local v2    # "node":Lorg/jsoup/nodes/f;
    :cond_2
    const/4 v4, 0x1

    :goto_0
    return v4

    .line 770
    .restart local v2    # "node":Lorg/jsoup/nodes/f;
    :cond_3
    invoke-virtual {p2, v2}, Lorg/jsoup/b/b;->h(Lorg/jsoup/nodes/f;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 771
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 772
    const/4 v4, 0x0

    goto :goto_0
.end method
