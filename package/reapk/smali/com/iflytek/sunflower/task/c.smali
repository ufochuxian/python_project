.class public Lcom/iflytek/sunflower/task/c;
.super Ljava/lang/Thread;


# instance fields
.field private a:Lcom/iflytek/sunflower/a/d;

.field private b:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput p1, p0, Lcom/iflytek/sunflower/task/c;->b:I

    new-instance v0, Lcom/iflytek/sunflower/a/d;

    invoke-direct {v0}, Lcom/iflytek/sunflower/a/d;-><init>()V

    sget-object v1, Lcom/iflytek/sunflower/config/a;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/iflytek/sunflower/a/d;->a:Ljava/lang/String;

    iput-object p2, v0, Lcom/iflytek/sunflower/a/d;->b:Ljava/lang/String;

    iput-object p3, v0, Lcom/iflytek/sunflower/a/d;->c:Ljava/lang/String;

    iput-object p4, v0, Lcom/iflytek/sunflower/a/d;->d:Ljava/util/HashMap;

    iput-wide p5, v0, Lcom/iflytek/sunflower/a/d;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/iflytek/sunflower/a/d;->f:J

    iput-object v0, p0, Lcom/iflytek/sunflower/task/c;->a:Lcom/iflytek/sunflower/a/d;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;J)Ljava/lang/Boolean;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v7, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Collector"

    const-string v1, "invalid event id"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget v0, Lcom/iflytek/sunflower/config/a;->p:I

    invoke-static {p1, v0}, Lcom/iflytek/sunflower/c/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "Collector"

    const-string v1, "invalid event id"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    sget v0, Lcom/iflytek/sunflower/config/a;->p:I

    invoke-static {p2, v0}, Lcom/iflytek/sunflower/c/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Collector"

    const-string v1, "invalid event label"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_7

    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result v0

    sget v1, Lcom/iflytek/sunflower/config/a;->q:I

    if-le v0, v1, :cond_4

    const-string v0, "Collector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid event map, size large than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/iflytek/sunflower/config/a;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget v3, Lcom/iflytek/sunflower/config/a;->p:I

    invoke-static {v1, v3}, Lcom/iflytek/sunflower/c/b;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget v3, Lcom/iflytek/sunflower/config/a;->p:I

    invoke-static {v1, v3}, Lcom/iflytek/sunflower/c/b;->a(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_6
    const-string v1, "Collector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid event map "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "invalid key:<%s> or value:<%s> "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Collector"

    const-string v1, "invalid event param"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sunflower/task/c;->a:Lcom/iflytek/sunflower/a/d;

    invoke-static {v0}, Lcom/iflytek/sunflower/f;->c(Lcom/iflytek/sunflower/a/d;)V

    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sunflower/task/c;->a:Lcom/iflytek/sunflower/a/d;

    invoke-static {v0}, Lcom/iflytek/sunflower/f;->a(Lcom/iflytek/sunflower/a/d;)V

    return-void
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sunflower/task/c;->a:Lcom/iflytek/sunflower/a/d;

    invoke-static {v0}, Lcom/iflytek/sunflower/f;->b(Lcom/iflytek/sunflower/a/d;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/sunflower/task/c;->a:Lcom/iflytek/sunflower/a/d;

    iget-object v1, v0, Lcom/iflytek/sunflower/a/d;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/sunflower/task/c;->a:Lcom/iflytek/sunflower/a/d;

    iget-object v2, v0, Lcom/iflytek/sunflower/a/d;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/sunflower/task/c;->a:Lcom/iflytek/sunflower/a/d;

    iget-object v3, v0, Lcom/iflytek/sunflower/a/d;->d:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/iflytek/sunflower/task/c;->a:Lcom/iflytek/sunflower/a/d;

    iget-wide v4, v0, Lcom/iflytek/sunflower/a/d;->e:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/sunflower/task/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;J)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/iflytek/sunflower/config/a;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Collector"

    const-string v1, "Can\'t call onEvent before onResume"

    invoke-static {v0, v1}, Lcom/iflytek/sunflower/c/g;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Collector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call onEvent error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/sunflower/c/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/iflytek/sunflower/task/c;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/iflytek/sunflower/task/c;->a()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/iflytek/sunflower/task/c;->b()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/iflytek/sunflower/task/c;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
