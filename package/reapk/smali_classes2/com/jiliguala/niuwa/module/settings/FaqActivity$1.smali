.class Lcom/jiliguala/niuwa/module/settings/FaqActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/settings/FaqActivity;->showRedDot(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/jiliguala/niuwa/module/settings/FaqActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/FaqActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/settings/FaqActivity;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/FaqActivity$1;->b:Lcom/jiliguala/niuwa/module/settings/FaqActivity;

    iput-boolean p2, p0, Lcom/jiliguala/niuwa/module/settings/FaqActivity$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/FaqActivity$1;->b:Lcom/jiliguala/niuwa/module/settings/FaqActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/settings/FaqActivity;->access$000(Lcom/jiliguala/niuwa/module/settings/FaqActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/settings/FaqActivity$1;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    return-void

    .line 157
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
