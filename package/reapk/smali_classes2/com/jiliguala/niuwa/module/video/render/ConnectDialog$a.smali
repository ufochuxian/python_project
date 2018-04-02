.class Lcom/jiliguala/niuwa/module/video/render/ConnectDialog$a;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/video/render/ConnectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/video/render/ConnectDialog;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/video/render/ConnectDialog;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p3, "services":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;>;"
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/video/render/ConnectDialog$a;->a:Lcom/jiliguala/niuwa/module/video/render/ConnectDialog;

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 92
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v8, 0x44

    .line 96
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/video/render/ConnectDialog$a;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 97
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f0b007c

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 100
    .local v5, "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/module/video/render/ConnectDialog$a;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;

    .line 103
    .local v3, "ri":Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;
    const v6, 0x7f090278

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 107
    .local v0, "icon":Landroid/widget/ImageView;
    const/16 v6, 0xdd

    invoke-static {v8, v6, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 111
    const v6, 0x7f09037f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 112
    .local v2, "name":Landroid/widget/TextView;
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;->getFriendlyName()Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, "riName":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/video/render/model/RenderInfo;->getType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 126
    :goto_0
    :pswitch_0
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    return-object v5

    .line 116
    :pswitch_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (AirPlay)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 117
    goto :goto_0

    .line 123
    :pswitch_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (DLNA)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
