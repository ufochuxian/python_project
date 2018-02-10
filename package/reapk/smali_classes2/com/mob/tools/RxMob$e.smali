.class final Lcom/mob/tools/RxMob$e;
.super Lcom/mob/tools/RxMob$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/RxMob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/mob/tools/RxMob$d",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/mob/tools/RxMob$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mob/tools/RxMob$c",
            "<TT;>;"
        }
    .end annotation
.end field

.field private b:Lcom/mob/tools/RxMob$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mob/tools/RxMob$d",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mob/tools/RxMob$c;Lcom/mob/tools/RxMob$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/RxMob$c",
            "<TT;>;",
            "Lcom/mob/tools/RxMob$d",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "this":Lcom/mob/tools/RxMob$e;, "Lcom/mob/tools/RxMob$e<TT;>;"
    .local p1, "subscribable":Lcom/mob/tools/RxMob$c;, "Lcom/mob/tools/RxMob$c<TT;>;"
    .local p2, "subscriber":Lcom/mob/tools/RxMob$d;, "Lcom/mob/tools/RxMob$d<TT;>;"
    invoke-direct {p0}, Lcom/mob/tools/RxMob$d;-><init>()V

    .line 210
    iput-object p1, p0, Lcom/mob/tools/RxMob$e;->a:Lcom/mob/tools/RxMob$c;

    .line 211
    iput-object p2, p0, Lcom/mob/tools/RxMob$e;->b:Lcom/mob/tools/RxMob$d;

    .line 212
    invoke-static {p2, p0}, Lcom/mob/tools/RxMob$d;->a(Lcom/mob/tools/RxMob$d;Lcom/mob/tools/RxMob$e;)V

    .line 213
    return-void
.end method

.method static synthetic a(Lcom/mob/tools/RxMob$e;)Lcom/mob/tools/RxMob$d;
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/RxMob$e;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/mob/tools/RxMob$e;->b:Lcom/mob/tools/RxMob$d;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 272
    .local p0, "this":Lcom/mob/tools/RxMob$e;, "Lcom/mob/tools/RxMob$e<TT;>;"
    iget-object v2, p0, Lcom/mob/tools/RxMob$e;->b:Lcom/mob/tools/RxMob$d;

    if-eqz v2, :cond_0

    .line 273
    iget-object v2, p0, Lcom/mob/tools/RxMob$e;->a:Lcom/mob/tools/RxMob$c;

    invoke-static {v2}, Lcom/mob/tools/RxMob$c;->b(Lcom/mob/tools/RxMob$c;)Lcom/mob/tools/RxMob$Thread;

    move-result-object v2

    sget-object v3, Lcom/mob/tools/RxMob$Thread;->UI_THREAD:Lcom/mob/tools/RxMob$Thread;

    if-ne v2, v3, :cond_2

    .line 274
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 275
    .local v0, "mainThreadId":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_1

    .line 276
    iget-object v2, p0, Lcom/mob/tools/RxMob$e;->b:Lcom/mob/tools/RxMob$d;

    invoke-virtual {v2}, Lcom/mob/tools/RxMob$d;->a()V

    .line 277
    invoke-virtual {p0}, Lcom/mob/tools/RxMob$e;->d()V

    .line 299
    .end local v0    # "mainThreadId":J
    :cond_0
    :goto_0
    return-void

    .line 279
    .restart local v0    # "mainThreadId":J
    :cond_1
    const/4 v2, 0x0

    new-instance v3, Lcom/mob/tools/RxMob$e$5;

    invoke-direct {v3, p0}, Lcom/mob/tools/RxMob$e$5;-><init>(Lcom/mob/tools/RxMob$e;)V

    invoke-static {v2, v3}, Lcom/mob/tools/c/o;->a(ILandroid/os/Handler$Callback;)Z

    goto :goto_0

    .line 287
    .end local v0    # "mainThreadId":J
    :cond_2
    iget-object v2, p0, Lcom/mob/tools/RxMob$e;->a:Lcom/mob/tools/RxMob$c;

    invoke-static {v2}, Lcom/mob/tools/RxMob$c;->b(Lcom/mob/tools/RxMob$c;)Lcom/mob/tools/RxMob$Thread;

    move-result-object v2

    sget-object v3, Lcom/mob/tools/RxMob$Thread;->NEW_THREAD:Lcom/mob/tools/RxMob$Thread;

    if-ne v2, v3, :cond_3

    .line 288
    new-instance v2, Lcom/mob/tools/RxMob$e$6;

    invoke-direct {v2, p0}, Lcom/mob/tools/RxMob$e$6;-><init>(Lcom/mob/tools/RxMob$e;)V

    .line 293
    invoke-virtual {v2}, Lcom/mob/tools/RxMob$e$6;->start()V

    goto :goto_0

    .line 295
    :cond_3
    iget-object v2, p0, Lcom/mob/tools/RxMob$e;->b:Lcom/mob/tools/RxMob$d;

    invoke-virtual {v2}, Lcom/mob/tools/RxMob$d;->a()V

    .line 296
    invoke-virtual {p0}, Lcom/mob/tools/RxMob$e;->d()V

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p0, "this":Lcom/mob/tools/RxMob$e;, "Lcom/mob/tools/RxMob$e<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lcom/mob/tools/RxMob$e;->b:Lcom/mob/tools/RxMob$d;

    if-eqz v2, :cond_0

    .line 247
    iget-object v2, p0, Lcom/mob/tools/RxMob$e;->a:Lcom/mob/tools/RxMob$c;

    invoke-static {v2}, Lcom/mob/tools/RxMob$c;->b(Lcom/mob/tools/RxMob$c;)Lcom/mob/tools/RxMob$Thread;

    move-result-object v2

    sget-object v3, Lcom/mob/tools/RxMob$Thread;->UI_THREAD:Lcom/mob/tools/RxMob$Thread;

    if-ne v2, v3, :cond_2

    .line 248
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 249
    .local v0, "mainThreadId":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_1

    .line 250
    iget-object v2, p0, Lcom/mob/tools/RxMob$e;->b:Lcom/mob/tools/RxMob$d;

    invoke-virtual {v2, p1}, Lcom/mob/tools/RxMob$d;->a(Ljava/lang/Object;)V

    .line 269
    .end local v0    # "mainThreadId":J
    :cond_0
    :goto_0
    return-void

    .line 252
    .restart local v0    # "mainThreadId":J
    :cond_1
    const/4 v2, 0x0

    new-instance v3, Lcom/mob/tools/RxMob$e$3;

    invoke-direct {v3, p0, p1}, Lcom/mob/tools/RxMob$e$3;-><init>(Lcom/mob/tools/RxMob$e;Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/mob/tools/c/o;->a(ILandroid/os/Handler$Callback;)Z

    goto :goto_0

    .line 259
    .end local v0    # "mainThreadId":J
    :cond_2
    iget-object v2, p0, Lcom/mob/tools/RxMob$e;->a:Lcom/mob/tools/RxMob$c;

    invoke-static {v2}, Lcom/mob/tools/RxMob$c;->b(Lcom/mob/tools/RxMob$c;)Lcom/mob/tools/RxMob$Thread;

    move-result-object v2

    sget-object v3, Lcom/mob/tools/RxMob$Thread;->NEW_THREAD:Lcom/mob/tools/RxMob$Thread;

    if-ne v2, v3, :cond_3

    .line 260
    new-instance v2, Lcom/mob/tools/RxMob$e$4;

    invoke-direct {v2, p0, p1}, Lcom/mob/tools/RxMob$e$4;-><init>(Lcom/mob/tools/RxMob$e;Ljava/lang/Object;)V

    .line 264
    invoke-virtual {v2}, Lcom/mob/tools/RxMob$e$4;->start()V

    goto :goto_0

    .line 266
    :cond_3
    iget-object v2, p0, Lcom/mob/tools/RxMob$e;->b:Lcom/mob/tools/RxMob$d;

    invoke-virtual {v2, p1}, Lcom/mob/tools/RxMob$d;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 302
    .local p0, "this":Lcom/mob/tools/RxMob$e;, "Lcom/mob/tools/RxMob$e<TT;>;"
    iget-object v2, p0, Lcom/mob/tools/RxMob$e;->b:Lcom/mob/tools/RxMob$d;

    if-eqz v2, :cond_0

    .line 303
    iget-object v2, p0, Lcom/mob/tools/RxMob$e;->a:Lcom/mob/tools/RxMob$c;

    invoke-static {v2}, Lcom/mob/tools/RxMob$c;->b(Lcom/mob/tools/RxMob$c;)Lcom/mob/tools/RxMob$Thread;

    move-result-object v2

    sget-object v3, Lcom/mob/tools/RxMob$Thread;->UI_THREAD:Lcom/mob/tools/RxMob$Thread;

    if-ne v2, v3, :cond_2

    .line 304
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 305
    .local v0, "mainThreadId":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_1

    .line 306
    iget-object v2, p0, Lcom/mob/tools/RxMob$e;->b:Lcom/mob/tools/RxMob$d;

    invoke-virtual {v2, p1}, Lcom/mob/tools/RxMob$d;->a(Ljava/lang/Throwable;)V

    .line 307
    invoke-virtual {p0}, Lcom/mob/tools/RxMob$e;->d()V

    .line 329
    .end local v0    # "mainThreadId":J
    :cond_0
    :goto_0
    return-void

    .line 309
    .restart local v0    # "mainThreadId":J
    :cond_1
    const/4 v2, 0x0

    new-instance v3, Lcom/mob/tools/RxMob$e$7;

    invoke-direct {v3, p0, p1}, Lcom/mob/tools/RxMob$e$7;-><init>(Lcom/mob/tools/RxMob$e;Ljava/lang/Throwable;)V

    invoke-static {v2, v3}, Lcom/mob/tools/c/o;->a(ILandroid/os/Handler$Callback;)Z

    goto :goto_0

    .line 317
    .end local v0    # "mainThreadId":J
    :cond_2
    iget-object v2, p0, Lcom/mob/tools/RxMob$e;->a:Lcom/mob/tools/RxMob$c;

    invoke-static {v2}, Lcom/mob/tools/RxMob$c;->b(Lcom/mob/tools/RxMob$c;)Lcom/mob/tools/RxMob$Thread;

    move-result-object v2

    sget-object v3, Lcom/mob/tools/RxMob$Thread;->NEW_THREAD:Lcom/mob/tools/RxMob$Thread;

    if-ne v2, v3, :cond_3

    .line 318
    new-instance v2, Lcom/mob/tools/RxMob$e$8;

    invoke-direct {v2, p0, p1}, Lcom/mob/tools/RxMob$e$8;-><init>(Lcom/mob/tools/RxMob$e;Ljava/lang/Throwable;)V

    .line 323
    invoke-virtual {v2}, Lcom/mob/tools/RxMob$e$8;->start()V

    goto :goto_0

    .line 325
    :cond_3
    iget-object v2, p0, Lcom/mob/tools/RxMob$e;->b:Lcom/mob/tools/RxMob$d;

    invoke-virtual {v2, p1}, Lcom/mob/tools/RxMob$d;->a(Ljava/lang/Throwable;)V

    .line 326
    invoke-virtual {p0}, Lcom/mob/tools/RxMob$e;->d()V

    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 220
    .local p0, "this":Lcom/mob/tools/RxMob$e;, "Lcom/mob/tools/RxMob$e<TT;>;"
    iget-object v2, p0, Lcom/mob/tools/RxMob$e;->b:Lcom/mob/tools/RxMob$d;

    if-eqz v2, :cond_0

    .line 221
    iget-object v2, p0, Lcom/mob/tools/RxMob$e;->a:Lcom/mob/tools/RxMob$c;

    invoke-static {v2}, Lcom/mob/tools/RxMob$c;->b(Lcom/mob/tools/RxMob$c;)Lcom/mob/tools/RxMob$Thread;

    move-result-object v2

    sget-object v3, Lcom/mob/tools/RxMob$Thread;->UI_THREAD:Lcom/mob/tools/RxMob$Thread;

    if-ne v2, v3, :cond_2

    .line 222
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 223
    .local v0, "mainThreadId":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_1

    .line 224
    iget-object v2, p0, Lcom/mob/tools/RxMob$e;->b:Lcom/mob/tools/RxMob$d;

    invoke-virtual {v2}, Lcom/mob/tools/RxMob$d;->b()V

    .line 243
    .end local v0    # "mainThreadId":J
    :cond_0
    :goto_0
    return-void

    .line 226
    .restart local v0    # "mainThreadId":J
    :cond_1
    const/4 v2, 0x0

    new-instance v3, Lcom/mob/tools/RxMob$e$1;

    invoke-direct {v3, p0}, Lcom/mob/tools/RxMob$e$1;-><init>(Lcom/mob/tools/RxMob$e;)V

    invoke-static {v2, v3}, Lcom/mob/tools/c/o;->a(ILandroid/os/Handler$Callback;)Z

    goto :goto_0

    .line 233
    .end local v0    # "mainThreadId":J
    :cond_2
    iget-object v2, p0, Lcom/mob/tools/RxMob$e;->a:Lcom/mob/tools/RxMob$c;

    invoke-static {v2}, Lcom/mob/tools/RxMob$c;->b(Lcom/mob/tools/RxMob$c;)Lcom/mob/tools/RxMob$Thread;

    move-result-object v2

    sget-object v3, Lcom/mob/tools/RxMob$Thread;->NEW_THREAD:Lcom/mob/tools/RxMob$Thread;

    if-ne v2, v3, :cond_3

    .line 234
    new-instance v2, Lcom/mob/tools/RxMob$e$2;

    invoke-direct {v2, p0}, Lcom/mob/tools/RxMob$e$2;-><init>(Lcom/mob/tools/RxMob$e;)V

    .line 238
    invoke-virtual {v2}, Lcom/mob/tools/RxMob$e$2;->start()V

    goto :goto_0

    .line 240
    :cond_3
    iget-object v2, p0, Lcom/mob/tools/RxMob$e;->b:Lcom/mob/tools/RxMob$d;

    invoke-virtual {v2}, Lcom/mob/tools/RxMob$d;->b()V

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 216
    .local p0, "this":Lcom/mob/tools/RxMob$e;, "Lcom/mob/tools/RxMob$e<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mob/tools/RxMob$e;->b:Lcom/mob/tools/RxMob$d;

    .line 217
    return-void
.end method
