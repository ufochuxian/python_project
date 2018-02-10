.class Lcom/mob/tools/gui/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/gui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Lcom/mob/tools/gui/a$d$1;

    invoke-direct {v0, p0}, Lcom/mob/tools/gui/a$d$1;-><init>(Lcom/mob/tools/gui/a$d;)V

    .line 177
    .local v0, "thread":Lcom/mob/tools/b;
    invoke-virtual {v0}, Lcom/mob/tools/b;->start()V

    .line 178
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/mob/tools/b;->b()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/mob/tools/gui/a$d;->a:Landroid/os/Handler;

    .line 179
    iget-object v1, p0, Lcom/mob/tools/gui/a$d;->a:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/16 v4, 0x4e20

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 180
    return-void
.end method

.method static synthetic a(Lcom/mob/tools/gui/a$d;)V
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/gui/a$d;

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/mob/tools/gui/a$d;->b()V

    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 183
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/mob/tools/gui/a;->c()[Lcom/mob/tools/gui/a$f;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 184
    invoke-static {}, Lcom/mob/tools/gui/a;->c()[Lcom/mob/tools/gui/a$f;

    move-result-object v1

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 185
    invoke-static {}, Lcom/mob/tools/gui/a;->c()[Lcom/mob/tools/gui/a$f;

    move-result-object v1

    new-instance v2, Lcom/mob/tools/gui/a$f;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/mob/tools/gui/a$f;-><init>(Lcom/mob/tools/gui/a$1;)V

    aput-object v2, v1, v0

    .line 186
    invoke-static {}, Lcom/mob/tools/gui/a;->c()[Lcom/mob/tools/gui/a$f;

    move-result-object v1

    aget-object v1, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "worker "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mob/tools/gui/a$f;->setName(Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/mob/tools/gui/a;->c()[Lcom/mob/tools/gui/a$f;

    move-result-object v1

    aget-object v2, v1, v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v1}, Lcom/mob/tools/gui/a$f;->a(Lcom/mob/tools/gui/a$f;Z)Z

    .line 188
    invoke-static {}, Lcom/mob/tools/gui/a;->c()[Lcom/mob/tools/gui/a$f;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/mob/tools/gui/a$f;->start()V

    .line 183
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 191
    :cond_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 210
    iget-object v1, p0, Lcom/mob/tools/gui/a$d;->a:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 211
    iget-object v1, p0, Lcom/mob/tools/gui/a$d;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 212
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/mob/tools/gui/a;->c()[Lcom/mob/tools/gui/a$f;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 213
    invoke-static {}, Lcom/mob/tools/gui/a;->c()[Lcom/mob/tools/gui/a$f;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 214
    invoke-static {}, Lcom/mob/tools/gui/a;->c()[Lcom/mob/tools/gui/a$f;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/mob/tools/gui/a$f;->interrupt()V

    .line 215
    invoke-static {}, Lcom/mob/tools/gui/a;->c()[Lcom/mob/tools/gui/a$f;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 212
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 194
    invoke-static {}, Lcom/mob/tools/gui/a;->d()Lcom/mob/tools/gui/b;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 195
    invoke-static {}, Lcom/mob/tools/gui/a;->d()Lcom/mob/tools/gui/b;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/mob/tools/gui/b;->a(J)V

    .line 198
    :cond_0
    invoke-static {}, Lcom/mob/tools/gui/a;->d()Lcom/mob/tools/gui/b;

    move-result-object v3

    if-nez v3, :cond_2

    move v0, v2

    .line 199
    .local v0, "cacheMapSize":I
    :goto_0
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">>>> BitmapProcessor.cachePool: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/mob/tools/log/d;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 200
    invoke-static {}, Lcom/mob/tools/gui/a;->e()Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_3

    move v1, v2

    .line 201
    .local v1, "reqListSize":I
    :goto_1
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">>>> BitmapProcessor.reqList: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/mob/tools/log/d;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 203
    invoke-static {}, Lcom/mob/tools/gui/a;->f()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 204
    iget-object v3, p0, Lcom/mob/tools/gui/a$d;->a:Landroid/os/Handler;

    const/4 v4, 0x1

    const-wide/16 v6, 0x4e20

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 206
    :cond_1
    return v2

    .line 198
    .end local v0    # "cacheMapSize":I
    .end local v1    # "reqListSize":I
    :cond_2
    invoke-static {}, Lcom/mob/tools/gui/a;->d()Lcom/mob/tools/gui/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mob/tools/gui/b;->b()I

    move-result v0

    goto :goto_0

    .line 200
    .restart local v0    # "cacheMapSize":I
    :cond_3
    invoke-static {}, Lcom/mob/tools/gui/a;->e()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_1
.end method
