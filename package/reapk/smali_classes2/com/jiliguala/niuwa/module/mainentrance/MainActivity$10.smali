.class Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->showUpdateDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$10;->a:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$10;->a:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->getCurrentPos()I

    move-result v0

    if-nez v0, :cond_0

    .line 427
    const-string v0, "UPDATE_DIALOG"

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mainentrance/utils/DialogChain;->notifyDialogDismiss(Ljava/lang/String;)V

    .line 429
    :cond_0
    return-void
.end method
