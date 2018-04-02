.class Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->showUnFavDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    .prologue
    .line 597
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$25;->c:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$25;->a:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$25;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 600
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$25;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 601
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$25;->c:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$100(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$25;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/presenter/AudioPresenter;->confirmUnFavThisSong(Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$25;->c:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->access$1600(Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f080125

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 603
    return-void
.end method
