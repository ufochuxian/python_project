.class Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 390
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$7;->a:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 393
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$7;->a:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$100(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 394
    return-void
.end method
