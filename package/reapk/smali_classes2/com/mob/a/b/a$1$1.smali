.class Lcom/mob/a/b/a$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mob/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/a/b/a$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/a/b/a$1;


# direct methods
.method constructor <init>(Lcom/mob/a/b/a$1;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/mob/a/b/a$1$1;->a:Lcom/mob/a/b/a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mob/tools/c/f;)Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mob/a/b/a$1$1;->a:Lcom/mob/a/b/a$1;

    invoke-static {v0}, Lcom/mob/a/b/a$1;->a(Lcom/mob/a/b/a$1;)V

    .line 71
    const/4 v0, 0x0

    return v0
.end method
