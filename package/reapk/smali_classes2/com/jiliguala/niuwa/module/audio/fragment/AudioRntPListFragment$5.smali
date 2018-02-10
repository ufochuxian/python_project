.class Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;->showDeleteFavDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment$5;->b:Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment$5;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/AudioRntPListFragment$5;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 237
    return-void
.end method
