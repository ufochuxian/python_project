.class public Lcom/jiliguala/niuwa/common/util/xutils/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/widget/EditText;)V
    .locals 4
    .param p0, "edit"    # Landroid/widget/EditText;

    .prologue
    .line 14
    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    .line 15
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/d$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/common/util/xutils/d$1;-><init>(Landroid/widget/EditText;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    return-void
.end method

.method public static b(Landroid/widget/EditText;)V
    .locals 3
    .param p0, "edit"    # Landroid/widget/EditText;

    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 27
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 28
    return-void
.end method
