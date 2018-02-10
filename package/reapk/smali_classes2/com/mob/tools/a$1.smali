.class Lcom/mob/tools/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/a;->showForResult(Landroid/content/Context;Landroid/content/Intent;Lcom/mob/tools/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcom/mob/tools/a;


# direct methods
.method constructor <init>(Lcom/mob/tools/a;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mob/tools/a;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/mob/tools/a$1;->c:Lcom/mob/tools/a;

    iput-object p2, p0, Lcom/mob/tools/a$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/mob/tools/a$1;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/mob/tools/a$1;->c:Lcom/mob/tools/a;

    iget-object v1, p0, Lcom/mob/tools/a$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/mob/tools/a$1;->b:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/mob/tools/a;->access$000(Lcom/mob/tools/a;Landroid/content/Context;Landroid/content/Intent;)V

    .line 229
    const/4 v0, 0x0

    return v0
.end method
