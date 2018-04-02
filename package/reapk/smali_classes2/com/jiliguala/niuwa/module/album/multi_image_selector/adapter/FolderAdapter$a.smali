.class Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/ImageView;

.field final synthetic e:Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter$a;->e:Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const v0, 0x7f090180

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter$a;->a:Landroid/widget/ImageView;

    .line 123
    const v0, 0x7f09037f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter$a;->b:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f090501

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter$a;->c:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f09028f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter$a;->d:Landroid/widget/ImageView;

    .line 126
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 127
    return-void
.end method


# virtual methods
.method a(Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Folder;)V
    .locals 3
    .param p1, "data"    # Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Folder;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter$a;->b:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Folder;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter$a;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Folder;->images:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5f20"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter$a;->e:Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;->access$000(Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->a(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Folder;->cover:Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;

    iget-object v2, v2, Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->a(Ljava/io/File;)Lcom/squareup/picasso/w;

    move-result-object v0

    const v1, 0x7f080145

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/w;->a(I)Lcom/squareup/picasso/w;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter$a;->e:Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;

    iget v1, v1, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;->mImageSize:I

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter$a;->e:Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;

    iget v2, v2, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;->mImageSize:I

    invoke-virtual {v0, v1, v2}, Lcom/squareup/picasso/w;->b(II)Lcom/squareup/picasso/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/picasso/w;->d()Lcom/squareup/picasso/w;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter$a;->a:Landroid/widget/ImageView;

    .line 134
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/w;->a(Landroid/widget/ImageView;)V

    .line 136
    return-void
.end method
