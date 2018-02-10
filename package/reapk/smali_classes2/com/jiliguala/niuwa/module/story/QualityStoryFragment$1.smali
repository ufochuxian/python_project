.class Lcom/jiliguala/niuwa/module/story/QualityStoryFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment$1;->a:Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 153
    const/4 v4, 0x6

    if-ne p2, v4, :cond_0

    .line 154
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 155
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 156
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment$1;->a:Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->access$000(Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 157
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment$1;->a:Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->access$102(Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment$1;->a:Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->access$100(Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment$1;->a:Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->access$000(Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment$1;->a:Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->access$000(Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v3, v4, v5, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 159
    .local v0, "ellipsize":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment$1;->a:Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->access$000(Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment$1;->a:Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;

    invoke-static {v3, v2}, Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;->access$202(Lcom/jiliguala/niuwa/module/story/QualityStoryFragment;Z)Z

    .line 163
    .end local v0    # "ellipsize":Ljava/lang/CharSequence;
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method
