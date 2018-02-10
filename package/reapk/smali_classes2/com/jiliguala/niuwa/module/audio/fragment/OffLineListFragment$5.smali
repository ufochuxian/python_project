.class Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;->showDeleteFavDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment$5;->b:Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment$5;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 395
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/audio/fragment/OffLineListFragment$5;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 396
    return-void
.end method
