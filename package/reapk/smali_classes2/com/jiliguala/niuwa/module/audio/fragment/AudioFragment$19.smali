.class Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->showDeleteOfflineDialog(Ljava/lang/String;)V
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
    .line 2246
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$19;->c:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$19;->a:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$19;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2249
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$19;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2250
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/c;->a()Lcom/jiliguala/niuwa/logic/k/c;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$19;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/k/c;->e(Ljava/lang/String;)V

    .line 2251
    invoke-static {}, Lcom/jiliguala/niuwa/logic/g/a;->a()Lcom/jiliguala/niuwa/logic/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$19;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/g/a;->b(Ljava/lang/String;)V

    .line 2252
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/b;->a()Lcom/jiliguala/niuwa/logic/k/b;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$19;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/k/b;->c(Ljava/lang/String;)V

    .line 2253
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment$19;->c:Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/audio/fragment/AudioFragment;->updateDownloadIcon(I)V

    .line 2255
    return-void
.end method
