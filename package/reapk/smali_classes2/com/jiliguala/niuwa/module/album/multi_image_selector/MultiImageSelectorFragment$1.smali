.class Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/as$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/as$a",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

.field private final b:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;)V
    .locals 3
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$1;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$1;->b:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/content/p;Landroid/database/Cursor;)V
    .locals 17
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/p",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "loader":Landroid/support/v4/content/p;, "Landroid/support/v4/content/p<Landroid/database/Cursor;>;"
    if-eqz p2, :cond_3

    .line 135
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v12, "images":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;>;"
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 137
    .local v3, "count":I
    if-lez v3, :cond_3

    .line 138
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 140
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$1;->b:[Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 141
    .local v14, "path":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 142
    invoke-static {v14}, Lcom/jiliguala/niuwa/common/util/i;->b(Ljava/lang/String;)Z

    move-result v2

    .line 143
    .local v2, "canOpen":Z
    if-nez v2, :cond_4

    .line 174
    .end local v2    # "canOpen":Z
    :cond_1
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-nez v15, :cond_0

    .line 176
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$1;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    invoke-static {v15}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->access$200(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;)Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;

    move-result-object v15

    invoke-virtual {v15, v12}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->setData(Ljava/util/List;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$1;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    invoke-static {v15}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->access$300(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;)Ljava/util/ArrayList;

    move-result-object v15

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$1;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    invoke-static {v15}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->access$300(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_2

    .line 180
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$1;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    invoke-static {v15}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->access$200(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;)Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$1;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->access$300(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/ImageGridAdapter;->setDefaultSelected(Ljava/util/ArrayList;)V

    .line 183
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$1;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    invoke-static {v15}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->access$400(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;)Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$1;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->access$100(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/adapter/FolderAdapter;->setData(Ljava/util/List;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$1;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    const/16 v16, 0x1

    invoke-static/range {v15 .. v16}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->access$002(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;Z)Z

    .line 188
    .end local v3    # "count":I
    .end local v12    # "images":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;>;"
    .end local v14    # "path":Ljava/lang/String;
    :cond_3
    return-void

    .line 150
    .restart local v2    # "canOpen":Z
    .restart local v3    # "count":I
    .restart local v12    # "images":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;>;"
    .restart local v14    # "path":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$1;->b:[Ljava/lang/String;

    const/16 v16, 0x1

    aget-object v15, v15, v16

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 151
    .local v13, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$1;->b:[Ljava/lang/String;

    const/16 v16, 0x2

    aget-object v15, v15, v16

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 152
    .local v4, "dateTime":J
    new-instance v9, Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;

    invoke-direct {v9, v14, v13, v4, v5}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 153
    .local v9, "image":Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$1;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    invoke-static {v15}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->access$000(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 156
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    .local v10, "imageFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    .line 158
    .local v8, "folderFile":Ljava/io/File;
    new-instance v7, Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Folder;

    invoke-direct {v7}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Folder;-><init>()V

    .line 159
    .local v7, "folder":Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Folder;
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v7, Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Folder;->name:Ljava/lang/String;

    .line 160
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v7, Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Folder;->path:Ljava/lang/String;

    .line 161
    iput-object v9, v7, Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Folder;->cover:Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;

    .line 162
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$1;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    invoke-static {v15}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->access$100(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 163
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v11, "imageList":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;>;"
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    iput-object v11, v7, Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Folder;->images:Ljava/util/List;

    .line 166
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$1;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    invoke-static {v15}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->access$100(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 169
    .end local v11    # "imageList":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Image;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$1;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    invoke-static {v15}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->access$100(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;)Ljava/util/ArrayList;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$1;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->access$100(Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;)Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Folder;

    .line 170
    .local v6, "f":Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Folder;
    iget-object v15, v6, Lcom/jiliguala/niuwa/module/album/multi_image_selector/bean/Folder;->images:Ljava/util/List;

    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/p;
    .locals 12
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/p",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v4, 0x0

    .line 119
    if-nez p1, :cond_0

    .line 120
    new-instance v0, Landroid/support/v4/content/k;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$1;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$1;->b:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$1;->b:[Ljava/lang/String;

    aget-object v6, v6, v10

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " DESC"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/k;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :goto_0
    return-object v0

    .line 123
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 124
    new-instance v0, Landroid/support/v4/content/k;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$1;->a:Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v8, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$1;->b:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$1;->b:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " like \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "path"

    .line 125
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$1;->b:[Ljava/lang/String;

    aget-object v2, v2, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DESC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v5, v0

    move-object v10, v4

    invoke-direct/range {v5 .. v11}, Landroid/support/v4/content/k;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .local v0, "cursorLoader":Landroid/support/v4/content/k;
    goto :goto_0

    .end local v0    # "cursorLoader":Landroid/support/v4/content/k;
    :cond_1
    move-object v0, v4

    .line 129
    goto :goto_0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/p;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 112
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/MultiImageSelectorFragment$1;->a(Landroid/support/v4/content/p;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/p",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "loader":Landroid/support/v4/content/p;, "Landroid/support/v4/content/p<Landroid/database/Cursor;>;"
    return-void
.end method
