.class Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;
.super Lcom/jiliguala/niuwa/common/util/xutils/task/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/util/xutils/task/b",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x5

.field public static final g:I = 0x6

.field public static final h:I = 0x7

.field public static final i:I = 0x8

.field public static final j:I = 0x9


# instance fields
.field final synthetic k:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;


# direct methods
.method private constructor <init>(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;)V
    .locals 1

    .prologue
    .line 286
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;->k:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/util/xutils/task/b;-><init>()V

    .line 287
    sget-object v0, Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;->UI_TOP:Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;->a(Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;)V

    .line 288
    return-void
.end method

.method synthetic constructor <init>(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;
    .param p2, "x1"    # Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$1;

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x2

    .line 292
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-object p1

    .line 294
    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;->k:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->f()Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;

    move-result-object v0

    .line 295
    .local v0, "cache":Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;
    if-eqz v0, :cond_0

    .line 298
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 300
    :pswitch_0
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 339
    :catch_0
    move-exception v1

    .line 340
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 303
    .end local v1    # "e":Ljava/lang/Throwable;
    :pswitch_1
    :try_start_1
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->b()V

    goto :goto_0

    .line 306
    :pswitch_2
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->f()V

    goto :goto_0

    .line 309
    :pswitch_3
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->d()V

    .line 310
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->g()V

    goto :goto_0

    .line 313
    :pswitch_4
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->c()V

    goto :goto_0

    .line 316
    :pswitch_5
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->d()V

    goto :goto_0

    .line 319
    :pswitch_6
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->e()V

    goto :goto_0

    .line 322
    :pswitch_7
    array-length v2, p1

    if-ne v2, v3, :cond_0

    .line 324
    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 327
    :pswitch_8
    array-length v2, p1

    if-ne v2, v3, :cond_0

    .line 329
    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 332
    :pswitch_9
    array-length v2, p1

    if-ne v2, v3, :cond_0

    .line 334
    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 298
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected synthetic b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 274
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;->d([Ljava/lang/Object;)V

    return-void
.end method

.method protected synthetic c([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 274
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected d([Ljava/lang/Object;)V
    .locals 3
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x2

    .line 347
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;->k:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->a(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;)Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 352
    :pswitch_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;->k:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->a(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;)Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/n;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 355
    .end local v0    # "e":Ljava/lang/Throwable;
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;->k:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->a(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;)Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a;->b()V

    goto :goto_0

    .line 358
    :pswitch_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;->k:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->a(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;)Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a;->f()V

    goto :goto_0

    .line 361
    :pswitch_3
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;->k:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->a(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;)Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a;->g()V

    goto :goto_0

    .line 364
    :pswitch_4
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;->k:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->a(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;)Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a;->c()V

    goto :goto_0

    .line 367
    :pswitch_5
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;->k:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->a(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;)Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a;->d()V

    goto :goto_0

    .line 370
    :pswitch_6
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;->k:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->a(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;)Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a;->e()V

    goto :goto_0

    .line 373
    :pswitch_7
    array-length v1, p1

    if-ne v1, v2, :cond_0

    .line 375
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;->k:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->a(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;)Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :pswitch_8
    array-length v1, p1

    if-ne v1, v2, :cond_0

    .line 380
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;->k:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->a(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;)Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 383
    :pswitch_9
    array-length v1, p1

    if-ne v1, v2, :cond_0

    .line 385
    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d$a;->k:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;

    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;->a(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/d;)Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 350
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
