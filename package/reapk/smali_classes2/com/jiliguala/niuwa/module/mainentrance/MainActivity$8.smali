.class Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$8;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    .prologue
    .line 394
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$8;->b:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$8;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 397
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$8;->b:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$8;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$200(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$8;->b:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$100(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 399
    return-void
.end method
