.class Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$4;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 15
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v12

    .line 114
    .local v12, "id":I
    sparse-switch v12, :sswitch_data_0

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 116
    :sswitch_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$4;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->onBackPressed()V

    goto :goto_0

    .line 119
    :sswitch_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$4;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->access$100(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;)Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$4;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->access$100(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;)Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$4;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->access$100(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;)Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->hideSoftInput()V

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$4;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->enablePoster(Z)V

    .line 123
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$4;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->access$200(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;)V

    goto :goto_0

    .line 126
    :sswitch_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$4;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->showProgressDialog()V

    .line 127
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$4;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->access$100(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;)Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$4;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->access$100(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;)Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$4;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->access$100(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;)Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->getForumTitle()Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "title":Ljava/lang/String;
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$4;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->access$100(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;)Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->getForumContent()Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "content":Ljava/lang/String;
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$4;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->access$300(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v5, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$TagPart;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$4;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->access$300(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 133
    .local v14, "tagStr":Ljava/lang/String;
    new-instance v13, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$TagPart;

    invoke-direct {v13}, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$TagPart;-><init>()V

    .line 134
    .local v13, "tag":Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$TagPart;
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v13, Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$TagPart;->tagid:I

    .line 135
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 137
    .end local v13    # "tag":Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$TagPart;
    .end local v14    # "tagStr":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$4;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->access$100(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;)Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    move-result-object v0

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$4;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    iget-object v3, v3, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mPicturePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$4;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->access$400(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;)I

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->sendPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 141
    .end local v5    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/ForumCreatorTemplate$TagPart;>;"
    :goto_2
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v0

    const-string v3, "Post"

    invoke-virtual {v0, v3}, Lcom/jiliguala/niuwa/logic/a/b;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 139
    :cond_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$4;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->access$100(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;)Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;

    move-result-object v6

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$4;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    iget-object v9, v0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->mPicturePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity$4;->a:Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;->access$400(Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorActivity;)I

    move-result v10

    const/4 v11, 0x0

    move-object v7, v1

    move-object v8, v2

    invoke-virtual/range {v6 .. v11}, Lcom/jiliguala/niuwa/module/forum/creator/ForumCreatorFragment;->sendPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)V

    goto :goto_2

    .line 114
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090014 -> :sswitch_0
        0x7f090033 -> :sswitch_1
        0x7f090157 -> :sswitch_2
    .end sparse-switch
.end method
