.class final Lcom/mob/tools/c/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:[Ljava/lang/Object;

.field final synthetic c:Lcom/mob/tools/c/k$a;


# direct methods
.method constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;Lcom/mob/tools/c/k$a;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/mob/tools/c/b$2;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/mob/tools/c/b$2;->b:[Ljava/lang/Object;

    iput-object p3, p0, Lcom/mob/tools/c/b$2;->c:Lcom/mob/tools/c/k$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 65
    iget-object v2, p0, Lcom/mob/tools/c/b$2;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/c/b$2;->b:[Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mob/tools/c/b$2;->c:Lcom/mob/tools/c/k$a;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/mob/tools/c/k$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    .line 68
    iget-object v1, p0, Lcom/mob/tools/c/b$2;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 73
    return v6

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 72
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
