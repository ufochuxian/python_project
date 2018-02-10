.class Lcom/jiliguala/niuwa/module/settings/ContactUsActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/ContactUsActivity$2;->b:Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/settings/ContactUsActivity$2;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 57
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/settings/ContactUsActivity$2;->b:Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/settings/ContactUsActivity$2;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/module/settings/ContactUsActivity;->save(Landroid/widget/ImageView;)V

    .line 58
    const/4 v0, 0x0

    return v0
.end method
