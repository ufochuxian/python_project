.class final Lcom/mob/a/e$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/a/e;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 337
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 339
    invoke-static {}, Lcom/mob/a/e;->q()Ljava/lang/String;

    move-result-object v0

    .line 340
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 341
    invoke-static {v0}, Lcom/mob/a/e;->a(Ljava/lang/String;)V

    .line 342
    new-instance v0, Lcom/mob/tools/c/g;

    invoke-direct {v0}, Lcom/mob/tools/c/g;-><init>()V

    invoke-static {}, Lcom/mob/a/e;->r()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/c/g;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/a/i;->d(Ljava/lang/String;)V

    .line 344
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mob/a/e;->a(Z)Z

    .line 345
    return-void
.end method
