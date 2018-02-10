.class Lcom/mob/a/b/b$1;
.super Lcom/mob/tools/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/a/b/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/a/b/b;


# direct methods
.method constructor <init>(Lcom/mob/a/b/b;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mob/a/b/b$1;->a:Lcom/mob/a/b/b;

    invoke-direct {p0}, Lcom/mob/tools/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mob/a/b/b$1;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/mob/a/b/b$1;->e()V

    return-void
.end method

.method private e()V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0}, Lcom/mob/tools/b;->run()V

    .line 83
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 69
    const-string v0, "comm/locks/.pkg_lock"

    invoke-static {v0}, Lcom/mob/a/h;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 70
    new-instance v1, Lcom/mob/a/b/b$1$1;

    invoke-direct {v1, p0}, Lcom/mob/a/b/b$1$1;-><init>(Lcom/mob/a/b/b$1;)V

    invoke-static {v0, v1}, Lcom/mob/a/h;->a(Ljava/io/File;Lcom/mob/a/a;)V

    .line 79
    return-void
.end method
