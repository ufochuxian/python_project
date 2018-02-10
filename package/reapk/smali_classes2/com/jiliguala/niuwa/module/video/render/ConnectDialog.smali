.class public Lcom/jiliguala/niuwa/module/video/render/ConnectDialog;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/video/render/ConnectDialog$a;
    }
.end annotation


# instance fields
.field private adapter:Lcom/jiliguala/niuwa/module/video/render/ConnectDialog$a;

.field private callback:Lcom/jiliguala/niuwa/module/video/render/listener/IRenderChooserAction;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/jiliguala/niuwa/module/video/render/listener/IRenderChooserAction;Ljava/util/Collection;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/jiliguala/niuwa/module/video/render/listener/IRenderChooserAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/jiliguala/niuwa/module/video/render/listener/IRenderChooserAction;",
            "Ljava/util/Collection",
            "<",
            "Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p3, "renders":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;>;"
    const v3, 0x7f1000b4

    invoke-direct {p0, p1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 51
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/video/render/ConnectDialog;->callback:Lcom/jiliguala/niuwa/module/video/render/listener/IRenderChooserAction;

    .line 53
    const v3, 0x7f0b007b

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/video/render/ConnectDialog;->setContentView(I)V

    .line 54
    new-instance v3, Lcom/jiliguala/niuwa/module/video/render/ConnectDialog$a;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/render/ConnectDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v3, p0, v4, v5}, Lcom/jiliguala/niuwa/module/video/render/ConnectDialog$a;-><init>(Lcom/jiliguala/niuwa/module/video/render/ConnectDialog;Landroid/content/Context;Ljava/util/List;)V

    iput-object v3, p0, Lcom/jiliguala/niuwa/module/video/render/ConnectDialog;->adapter:Lcom/jiliguala/niuwa/module/video/render/ConnectDialog$a;

    .line 55
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;

    .line 56
    .local v2, "ri":Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/video/render/ConnectDialog;->adapter:Lcom/jiliguala/niuwa/module/video/render/ConnectDialog$a;

    invoke-virtual {v4, v2}, Lcom/jiliguala/niuwa/module/video/render/ConnectDialog$a;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 59
    .end local v2    # "ri":Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;
    :cond_0
    const v3, 0x7f0902d0

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/video/render/ConnectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 60
    .local v1, "list":Landroid/widget/ListView;
    const v3, 0x7f0901da

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/video/render/ConnectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 61
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0600dd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 62
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/video/render/ConnectDialog;->adapter:Lcom/jiliguala/niuwa/module/video/render/ConnectDialog$a;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 65
    const v3, 0x7f0900fa

    invoke-virtual {p0, v3}, Lcom/jiliguala/niuwa/module/video/render/ConnectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 66
    .local v0, "cancel":Landroid/widget/Button;
    const-string v3, "cancel"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 67
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 72
    const-string v0, "cancel"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/render/ConnectDialog;->cancel()V

    .line 75
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/render/ConnectDialog;->adapter:Lcom/jiliguala/niuwa/module/video/render/ConnectDialog$a;

    invoke-virtual {v1, p3}, Lcom/jiliguala/niuwa/module/video/render/ConnectDialog$a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;

    .line 80
    .local v0, "ri":Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/video/render/ConnectDialog;->callback:Lcom/jiliguala/niuwa/module/video/render/listener/IRenderChooserAction;

    invoke-interface {v1, v0}, Lcom/jiliguala/niuwa/module/video/render/listener/IRenderChooserAction;->onRenderSelected(Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;)V

    .line 81
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/render/ConnectDialog;->cancel()V

    .line 82
    return-void
.end method
