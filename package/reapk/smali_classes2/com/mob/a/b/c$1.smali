.class Lcom/mob/a/b/c$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/a/b/c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/a/b/c;


# direct methods
.method constructor <init>(Lcom/mob/a/b/c;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/mob/a/b/c$1;->a:Lcom/mob/a/b/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 51
    const-string v0, "comm/locks/.rc_lock"

    invoke-static {v0}, Lcom/mob/a/h;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 52
    new-instance v1, Lcom/mob/a/b/c$1$1;

    invoke-direct {v1, p0}, Lcom/mob/a/b/c$1$1;-><init>(Lcom/mob/a/b/c$1;)V

    invoke-static {v0, v1}, Lcom/mob/a/h;->a(Ljava/io/File;Lcom/mob/a/a;)V

    .line 62
    return-void
.end method
