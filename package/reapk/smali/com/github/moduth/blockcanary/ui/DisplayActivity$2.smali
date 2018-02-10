.class Lcom/github/moduth/blockcanary/ui/DisplayActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/moduth/blockcanary/ui/DisplayActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
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
    .line 161
    iput-object p1, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$2;->b:Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    iput-object p2, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$2;->a:Lcom/github/moduth/blockcanary/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$2;->b:Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    iget-object v1, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$2;->a:Lcom/github/moduth/blockcanary/ui/c;

    invoke-static {v0, v1}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->b(Lcom/github/moduth/blockcanary/ui/DisplayActivity;Lcom/github/moduth/blockcanary/ui/c;)V

    .line 165
    const/4 v0, 0x1

    return v0
.end method
