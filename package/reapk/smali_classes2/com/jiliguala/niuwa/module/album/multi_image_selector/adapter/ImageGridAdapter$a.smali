.class Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/ImageView;

.field c:Landroid/view/View;

.field final synthetic d:Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter$a;->d:Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    const v0, 0x7f090280

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter$a;->a:Landroid/widget/ImageView;

    .line 210
    const v0, 0x7f09012b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter$a;->b:Landroid/widget/ImageView;

    .line 211
    const v0, 0x7f09030f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter$a;->c:Landroid/view/View;

    .line 212
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 213
    return-void
.end method


# virtual methods
.method a(Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;)V
    .locals 5
    .param p1, "data"    # Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 216
    if-nez p1, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter$a;->d:Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->access$000(Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 220
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter$a;->d:Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->access$100(Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter$a;->b:Landroid/widget/ImageView;

    const v2, 0x7f0800b7

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 224
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter$a;->c:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 233
    :goto_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    .local v0, "imageFile":Ljava/io/File;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter$a;->d:Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->access$200(Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;)I

    move-result v1

    if-lez v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter$a;->d:Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->access$300(Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->a(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Picasso;->a(Ljava/io/File;)Lcom/squareup/picasso/w;

    move-result-object v1

    const v2, 0x7f080143

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/w;->a(I)Lcom/squareup/picasso/w;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter$a;->d:Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;

    .line 239
    invoke-static {v2}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->access$200(Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;)I

    move-result v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter$a;->d:Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->access$200(Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/squareup/picasso/w;->b(II)Lcom/squareup/picasso/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/picasso/w;->d()Lcom/squareup/picasso/w;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/w;->a(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 227
    .end local v0    # "imageFile":Ljava/io/File;
    :cond_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter$a;->b:Landroid/widget/ImageView;

    const v2, 0x7f0800b8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 228
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter$a;->c:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 231
    :cond_3
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
