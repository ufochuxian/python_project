.class Lcom/jiliguala/niuwa/module/search/SearchActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/search/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/search/SearchActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/search/SearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/search/SearchActivity;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$4;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 193
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->stringFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$4;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v1, v0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$402(Lcom/jiliguala/niuwa/module/search/SearchActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 196
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$4;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$4;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$200(Lcom/jiliguala/niuwa/module/search/SearchActivity;)I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$800(Lcom/jiliguala/niuwa/module/search/SearchActivity;Ljava/lang/String;I)V

    .line 201
    :goto_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$4;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$1000(Lcom/jiliguala/niuwa/module/search/SearchActivity;)V

    .line 202
    return-void

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$4;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$900(Lcom/jiliguala/niuwa/module/search/SearchActivity;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 177
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 182
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$4;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$700(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "editable":Ljava/lang/String;
    invoke-static {v0}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->stringFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 185
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$4;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$700(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/search/SearchActivity$4;->a:Lcom/jiliguala/niuwa/module/search/SearchActivity;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/search/SearchActivity;->access$700(Lcom/jiliguala/niuwa/module/search/SearchActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 188
    :cond_0
    return-void
.end method
