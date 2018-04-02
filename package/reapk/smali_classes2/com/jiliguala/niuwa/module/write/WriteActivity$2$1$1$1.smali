.class Lcom/jiliguala/niuwa/module/write/WriteActivity$2$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/write/WriteActivity$2$1$1;->onDismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/write/WriteActivity$2$1$1;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/write/WriteActivity$2$1$1;)V
    .locals 0
    .param p1, "this$3"    # Lcom/jiliguala/niuwa/module/write/WriteActivity$2$1$1;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity$2$1$1$1;->a:Lcom/jiliguala/niuwa/module/write/WriteActivity$2$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 362
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity$2$1$1$1;->a:Lcom/jiliguala/niuwa/module/write/WriteActivity$2$1$1;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/write/WriteActivity$2$1$1;->a:Lcom/jiliguala/niuwa/module/write/WriteActivity$2$1;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/write/WriteActivity$2$1;->b:Lcom/jiliguala/niuwa/module/write/WriteActivity$2;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/write/WriteActivity$2;->b:Lcom/jiliguala/niuwa/module/write/WriteActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity$2$1$1$1;->a:Lcom/jiliguala/niuwa/module/write/WriteActivity$2$1$1;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/write/WriteActivity$2$1$1;->a:Lcom/jiliguala/niuwa/module/write/WriteActivity$2$1;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/write/WriteActivity$2$1;->b:Lcom/jiliguala/niuwa/module/write/WriteActivity$2;

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/write/WriteActivity$2;->b:Lcom/jiliguala/niuwa/module/write/WriteActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/write/WriteActivity;->finish()V

    .line 364
    invoke-static {}, Lcom/jiliguala/niuwa/logic/b/a;->a()Lcom/jiliguala/niuwa/logic/b/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/b/a/d;

    const/16 v2, 0x1012

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity$2$1$1$1;->a:Lcom/jiliguala/niuwa/module/write/WriteActivity$2$1$1;

    iget-object v3, v3, Lcom/jiliguala/niuwa/module/write/WriteActivity$2$1$1;->a:Lcom/jiliguala/niuwa/module/write/WriteActivity$2$1;

    iget-object v3, v3, Lcom/jiliguala/niuwa/module/write/WriteActivity$2$1;->a:Lcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/write/WriteActivity$2$1$1$1;->a:Lcom/jiliguala/niuwa/module/write/WriteActivity$2$1$1;

    iget-object v4, v4, Lcom/jiliguala/niuwa/module/write/WriteActivity$2$1$1;->a:Lcom/jiliguala/niuwa/module/write/WriteActivity$2$1;

    iget-object v4, v4, Lcom/jiliguala/niuwa/module/write/WriteActivity$2$1;->b:Lcom/jiliguala/niuwa/module/write/WriteActivity$2;

    iget-object v4, v4, Lcom/jiliguala/niuwa/module/write/WriteActivity$2;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/jiliguala/niuwa/logic/b/a/d;-><init>(ILcom/jiliguala/niuwa/logic/network/json/UnitDataTemplate;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/b/a;->a(Ljava/lang/Object;)V

    .line 368
    :cond_0
    return-void
.end method
