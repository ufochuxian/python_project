.class Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

.field final synthetic b:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;

.field final synthetic c:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$3;->c:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$3;->a:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    iput-object p3, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$3;->b:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 338
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0901f7

    if-ne v5, v6, :cond_0

    .line 339
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 340
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    .line 341
    .local v0, "ac":Lcom/jiliguala/niuwa/logic/login/a;
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->I()Z

    move-result v5

    if-nez v5, :cond_2

    .line 343
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->p()Z

    move-result v5

    if-nez v5, :cond_1

    .line 344
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$3;->c:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->access$000(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;)Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0f016e

    invoke-static {v4, v5}, Lcom/jiliguala/niuwa/module/register/ProfileCompletionActivity;->makeIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v2

    .line 345
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$3;->c:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->access$000(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;)Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->startActivity(Landroid/content/Intent;)V

    .line 392
    .end local v0    # "ac":Lcom/jiliguala/niuwa/logic/login/a;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 348
    .restart local v0    # "ac":Lcom/jiliguala/niuwa/logic/login/a;
    :cond_1
    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->n()Z

    move-result v5

    if-nez v5, :cond_2

    .line 350
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$3;->c:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->access$000(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;)Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    move-result-object v4

    .line 351
    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0f0158

    const-string v6, "FORUM_POST_APPLOUD"

    .line 350
    invoke-static {v4, v5, v6}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->makeIntentForPhoneRequiredStep(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 352
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$3;->c:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->access$000(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;)Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 356
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    const/4 v1, 0x0

    .line 357
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$3;->a:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget-boolean v5, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->zan:Z

    if-eqz v5, :cond_5

    .line 358
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 359
    .local v3, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "Room"

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$3;->a:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->boid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-string v5, "Title"

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$3;->a:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->res:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumResPart;->ttl:Ljava/lang/String;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v5

    const-string v6, "Post Like"

    .line 362
    invoke-virtual {v5, v6, v3}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 363
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$3;->c:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->access$600(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;)Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 364
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$3;->a:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$3;->a:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->zancnt:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->zancnt:I

    .line 365
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$3;->c:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->access$600(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0800c5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 366
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v1, v4, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 375
    .end local v3    # "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$3;->b:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;

    iget-object v5, v5, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->j:Landroid/widget/TextView;

    invoke-virtual {v5, v1, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 376
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$3;->a:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$3;->a:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget-boolean v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->zan:Z

    if-nez v6, :cond_4

    const/4 v4, 0x1

    :cond_4
    iput-boolean v4, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->zan:Z

    .line 377
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$3;->b:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;

    iget-object v4, v4, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$a;->j:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$3;->a:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->zancnt:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$3;->c:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$3;->a:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->_id:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->access$700(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 369
    :cond_5
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$3;->c:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->access$600(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;)Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 370
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$3;->c:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->access$600(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0800c3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 371
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v1, v4, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 372
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$3;->a:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    iget-object v5, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$3;->a:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;

    iget-object v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$SingleForum;->meta:Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;

    iget v6, v6, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->zancnt:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/jiliguala/niuwa/logic/network/json/ForumDetailSets$ForumMetaPart;->zancnt:I

    goto :goto_1

    .line 384
    .end local v0    # "ac":Lcom/jiliguala/niuwa/logic/login/a;
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_6
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$3;->c:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->access$000(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;)Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$3;->c:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->access$000(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;)Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 385
    const v4, 0x7f0f0285

    invoke-static {v4}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(I)V

    .line 386
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$3;->c:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->access$000(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;)Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/settings/login/SignInActivity;->makeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 387
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter$3;->c:Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;->access$000(Lcom/jiliguala/niuwa/module/forum/detail/adapter/ForumDetailListAdapter;)Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/jiliguala/niuwa/module/forum/detail/ForumDetailFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
