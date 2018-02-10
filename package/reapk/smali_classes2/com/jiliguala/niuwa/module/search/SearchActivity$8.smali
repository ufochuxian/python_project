.class Lcom/jiliguala/niuwa/module/search/SearchActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/search/SearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/search/SearchActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/search/SearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/search/SearchActivity;

    .prologue
    .line 599
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$8;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$8;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$500(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$8;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$1600(Lcom/jiliguala/niuwa/module/search/SearchActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 604
    return-void
.end method
