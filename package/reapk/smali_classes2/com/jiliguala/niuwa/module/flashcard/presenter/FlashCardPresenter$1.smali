.class Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$1;
.super Lcom/jiliguala/niuwa/logic/downloader/c/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$1;->a:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/downloader/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/logic/downloader/c/b;->a(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/File;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/logic/downloader/c/b;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 84
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/b;->a()Lcom/jiliguala/niuwa/logic/k/b;

    move-result-object v1

    invoke-static {p1}, Lcom/jiliguala/niuwa/common/util/x;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jiliguala/niuwa/logic/k/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$1;->a:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->access$000(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;

    .line 89
    .local v0, "item":Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;
    if-eqz v0, :cond_0

    .line 90
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$1;->a:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->access$100(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;->_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$1;->a:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->access$100(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;

    move-result-object v2

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;->_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$1;->a:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->access$202(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$1;->a:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter$1;->a:Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->access$200(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;->access$300(Lcom/jiliguala/niuwa/module/flashcard/presenter/FlashCardPresenter;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Lcom/jiliguala/niuwa/logic/downloader/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method
