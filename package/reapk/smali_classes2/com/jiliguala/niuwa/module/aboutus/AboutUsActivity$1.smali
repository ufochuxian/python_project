.class Lcom/jiliguala/niuwa/module/aboutus/AboutUsActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/aboutus/AboutUsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/aboutus/AboutUsActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/aboutus/AboutUsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/aboutus/AboutUsActivity;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/aboutus/AboutUsActivity$1;->a:Lcom/jiliguala/niuwa/module/aboutus/AboutUsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/aboutus/AboutUsActivity$1;->a:Lcom/jiliguala/niuwa/module/aboutus/AboutUsActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/aboutus/AboutUsActivity;->onBackPressed()V

    .line 37
    return-void
.end method
