.class Lcom/mob/a/b/b$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mob/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/a/b/b$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/a/b/b$1;


# direct methods
.method constructor <init>(Lcom/mob/a/b/b$1;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/mob/a/b/b$1$1;->a:Lcom/mob/a/b/b$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mob/tools/c/f;)Z
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lcom/mob/a/e;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/mob/a/b/b$1$1;->a:Lcom/mob/a/b/b$1;

    iget-object v0, v0, Lcom/mob/a/b/b$1;->a:Lcom/mob/a/b/b;

    invoke-static {v0}, Lcom/mob/a/b/b;->a(Lcom/mob/a/b/b;)V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/mob/a/b/b$1$1;->a:Lcom/mob/a/b/b$1;

    invoke-static {v0}, Lcom/mob/a/b/b$1;->a(Lcom/mob/a/b/b$1;)V

    .line 76
    const/4 v0, 0x0

    return v0
.end method
