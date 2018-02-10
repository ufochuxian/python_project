.class final enum Lorg/jsoup/b/c$8;
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
    .line 1202
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/b/c;-><init>(Ljava/lang/String;ILorg/jsoup/b/c$1;)V

    return-void
.end method

.method private b(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z
    .locals 1
    .param p1, "t"    # Lorg/jsoup/b/h;
    .param p2, "tb"    # Lorg/jsoup/b/b;

    .prologue
    .line 1286
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 1287
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method a(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z
    .locals 8
    .param p1, "t"    # Lorg/jsoup/b/h;
    .param p2, "tb"    # Lorg/jsoup/b/b;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1204
    sget-object v6, Lorg/jsoup/b/c$17;->a:[I

    iget-object v7, p1, Lorg/jsoup/b/h;->a:Lorg/jsoup/b/h$h;

    invoke-virtual {v7}, Lorg/jsoup/b/h$h;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 1280
    invoke-direct {p0, p1, p2}, Lorg/jsoup/b/c$8;->b(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z

    move-result v4

    .line 1282
    :cond_0
    :goto_0
    return v4

    .line 1206
    :pswitch_0
    invoke-virtual {p1}, Lorg/jsoup/b/h;->k()Lorg/jsoup/b/h$a;

    move-result-object v0

    .line 1207
    .local v0, "c":Lorg/jsoup/b/h$a;
    invoke-virtual {v0}, Lorg/jsoup/b/h$a;->m()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lorg/jsoup/b/c;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1208
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    goto :goto_0

    .line 1211
    :cond_1
    invoke-virtual {p2, v0}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$a;)V

    .end local v0    # "c":Lorg/jsoup/b/h$a;
    :cond_2
    :goto_1
    move v4, v5

    .line 1282
    goto :goto_0

    .line 1215
    :pswitch_1
    invoke-virtual {p1}, Lorg/jsoup/b/h;->i()Lorg/jsoup/b/h$b;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$b;)V

    goto :goto_1

    .line 1218
    :pswitch_2
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    goto :goto_0

    .line 1221
    :pswitch_3
    invoke-virtual {p1}, Lorg/jsoup/b/h;->e()Lorg/jsoup/b/h$f;

    move-result-object v3

    .line 1222
    .local v3, "start":Lorg/jsoup/b/h$f;
    invoke-virtual {v3}, Lorg/jsoup/b/h$f;->o()Ljava/lang/String;

    move-result-object v2

    .line 1223
    .local v2, "name":Ljava/lang/String;
    const-string v6, "html"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1224
    sget-object v4, Lorg/jsoup/b/c$8;->InBody:Lorg/jsoup/b/c;

    invoke-virtual {p2, v3, v4}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;Lorg/jsoup/b/c;)Z

    move-result v4

    goto :goto_0

    .line 1225
    :cond_3
    const-string v6, "option"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1226
    new-instance v4, Lorg/jsoup/b/h$e;

    const-string v6, "option"

    invoke-direct {v4, v6}, Lorg/jsoup/b/h$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    .line 1227
    invoke-virtual {p2, v3}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    goto :goto_1

    .line 1228
    :cond_4
    const-string v6, "optgroup"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1229
    invoke-virtual {p2}, Lorg/jsoup/b/b;->x()Lorg/jsoup/nodes/f;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v4

    const-string v6, "option"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1230
    new-instance v4, Lorg/jsoup/b/h$e;

    const-string v6, "option"

    invoke-direct {v4, v6}, Lorg/jsoup/b/h$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    .line 1233
    :cond_5
    :goto_2
    invoke-virtual {p2, v3}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h$f;)Lorg/jsoup/nodes/f;

    goto :goto_1

    .line 1231
    :cond_6
    invoke-virtual {p2}, Lorg/jsoup/b/b;->x()Lorg/jsoup/nodes/f;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v4

    const-string v6, "optgroup"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1232
    new-instance v4, Lorg/jsoup/b/h$e;

    const-string v6, "optgroup"

    invoke-direct {v4, v6}, Lorg/jsoup/b/h$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    goto :goto_2

    .line 1234
    :cond_7
    const-string v6, "select"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1235
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 1236
    new-instance v4, Lorg/jsoup/b/h$e;

    const-string v5, "select"

    invoke-direct {v4, v5}, Lorg/jsoup/b/h$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    move-result v4

    goto/16 :goto_0

    .line 1237
    :cond_8
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "input"

    aput-object v7, v6, v4

    const-string v7, "keygen"

    aput-object v7, v6, v5

    const/4 v5, 0x2

    const-string v7, "textarea"

    aput-object v7, v6, v5

    invoke-static {v2, v6}, Lorg/jsoup/helper/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1238
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    .line 1239
    const-string v5, "select"

    invoke-virtual {p2, v5}, Lorg/jsoup/b/b;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1241
    new-instance v4, Lorg/jsoup/b/h$e;

    const-string v5, "select"

    invoke-direct {v4, v5}, Lorg/jsoup/b/h$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    .line 1242
    invoke-virtual {p2, v3}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    move-result v4

    goto/16 :goto_0

    .line 1243
    :cond_9
    const-string v4, "script"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1244
    sget-object v4, Lorg/jsoup/b/c$8;->InHead:Lorg/jsoup/b/c;

    invoke-virtual {p2, p1, v4}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;Lorg/jsoup/b/c;)Z

    move-result v4

    goto/16 :goto_0

    .line 1246
    :cond_a
    invoke-direct {p0, p1, p2}, Lorg/jsoup/b/c$8;->b(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z

    move-result v4

    goto/16 :goto_0

    .line 1250
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "start":Lorg/jsoup/b/h$f;
    :pswitch_4
    invoke-virtual {p1}, Lorg/jsoup/b/h;->g()Lorg/jsoup/b/h$e;

    move-result-object v1

    .line 1251
    .local v1, "end":Lorg/jsoup/b/h$e;
    invoke-virtual {v1}, Lorg/jsoup/b/h$e;->o()Ljava/lang/String;

    move-result-object v2

    .line 1252
    .restart local v2    # "name":Ljava/lang/String;
    const-string v6, "optgroup"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1253
    invoke-virtual {p2}, Lorg/jsoup/b/b;->x()Lorg/jsoup/nodes/f;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v4

    const-string v6, "option"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {p2}, Lorg/jsoup/b/b;->x()Lorg/jsoup/nodes/f;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/jsoup/b/b;->f(Lorg/jsoup/nodes/f;)Lorg/jsoup/nodes/f;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {p2}, Lorg/jsoup/b/b;->x()Lorg/jsoup/nodes/f;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/jsoup/b/b;->f(Lorg/jsoup/nodes/f;)Lorg/jsoup/nodes/f;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v4

    const-string v6, "optgroup"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1254
    new-instance v4, Lorg/jsoup/b/h$e;

    const-string v6, "option"

    invoke-direct {v4, v6}, Lorg/jsoup/b/h$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Lorg/jsoup/b/b;->a(Lorg/jsoup/b/h;)Z

    .line 1255
    :cond_b
    invoke-virtual {p2}, Lorg/jsoup/b/b;->x()Lorg/jsoup/nodes/f;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v4

    const-string v6, "optgroup"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1256
    invoke-virtual {p2}, Lorg/jsoup/b/b;->h()Lorg/jsoup/nodes/f;

    goto/16 :goto_1

    .line 1258
    :cond_c
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    goto/16 :goto_1

    .line 1259
    :cond_d
    const-string v6, "option"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1260
    invoke-virtual {p2}, Lorg/jsoup/b/b;->x()Lorg/jsoup/nodes/f;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v4

    const-string v6, "option"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1261
    invoke-virtual {p2}, Lorg/jsoup/b/b;->h()Lorg/jsoup/nodes/f;

    goto/16 :goto_1

    .line 1263
    :cond_e
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    goto/16 :goto_1

    .line 1264
    :cond_f
    const-string v6, "select"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1265
    invoke-virtual {p2, v2}, Lorg/jsoup/b/b;->i(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 1266
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    goto/16 :goto_0

    .line 1269
    :cond_10
    invoke-virtual {p2, v2}, Lorg/jsoup/b/b;->c(Ljava/lang/String;)V

    .line 1270
    invoke-virtual {p2}, Lorg/jsoup/b/b;->m()V

    goto/16 :goto_1

    .line 1273
    :cond_11
    invoke-direct {p0, p1, p2}, Lorg/jsoup/b/c$8;->b(Lorg/jsoup/b/h;Lorg/jsoup/b/b;)Z

    move-result v4

    goto/16 :goto_0

    .line 1276
    .end local v1    # "end":Lorg/jsoup/b/h$e;
    .end local v2    # "name":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p2}, Lorg/jsoup/b/b;->x()Lorg/jsoup/nodes/f;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/nodes/f;->a()Ljava/lang/String;

    move-result-object v4

    const-string v6, "html"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1277
    invoke-virtual {p2, p0}, Lorg/jsoup/b/b;->b(Lorg/jsoup/b/c;)V

    goto/16 :goto_1

    .line 1204
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
