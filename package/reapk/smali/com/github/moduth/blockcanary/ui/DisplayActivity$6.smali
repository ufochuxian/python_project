.class Lcom/github/moduth/blockcanary/ui/DisplayActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/moduth/blockcanary/ui/DisplayActivity;->c(Lcom/github/moduth/blockcanary/ui/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/moduth/blockcanary/ui/c;

.field final synthetic b:Lcom/github/moduth/blockcanary/ui/DisplayActivity;


# direct methods
.method constructor <init>(Lcom/github/moduth/blockcanary/ui/DisplayActivity;Lcom/github/moduth/blockcanary/ui/c;)V
    .locals 0
    .param p1, "this$0"    # Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$6;->b:Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    iput-object p2, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$6;->a:Lcom/github/moduth/blockcanary/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$6;->a:Lcom/github/moduth/blockcanary/ui/c;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$6;->a:Lcom/github/moduth/blockcanary/ui/c;

    iget-object v0, v0, Lcom/github/moduth/blockcanary/ui/c;->V:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 305
    iget-object v0, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$6;->b:Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->a(Lcom/github/moduth/blockcanary/ui/DisplayActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$6;->b:Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    invoke-static {v0}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->a(Lcom/github/moduth/blockcanary/ui/DisplayActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$6;->a:Lcom/github/moduth/blockcanary/ui/c;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 307
    iget-object v0, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$6;->b:Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    invoke-static {v0}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->b(Lcom/github/moduth/blockcanary/ui/DisplayActivity;)V

    .line 309
    :cond_0
    return-void
.end method
