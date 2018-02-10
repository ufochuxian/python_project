.class Landroid/support/v4/widget/ae$e;
.super Landroid/support/v4/widget/ae$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Landroid/support/v4/widget/ae$h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    invoke-static {p1}, Landroid/support/v4/widget/af;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "searchView"    # Landroid/view/View;

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/ae$e;->e(Landroid/view/View;)V

    .line 190
    invoke-static {p1}, Landroid/support/v4/widget/af;->b(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v4/widget/ae$a;)Ljava/lang/Object;
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/widget/ae$a;

    .prologue
    .line 172
    new-instance v0, Landroid/support/v4/widget/ae$e$2;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/widget/ae$e$2;-><init>(Landroid/support/v4/widget/ae$e;Landroid/support/v4/widget/ae$a;)V

    invoke-static {v0}, Landroid/support/v4/widget/af;->a(Landroid/support/v4/widget/af$a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v4/widget/ae$c;)Ljava/lang/Object;
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/widget/ae$c;

    .prologue
    .line 150
    new-instance v0, Landroid/support/v4/widget/ae$e$1;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/widget/ae$e$1;-><init>(Landroid/support/v4/widget/ae$e;Landroid/support/v4/widget/ae$c;)V

    invoke-static {v0}, Landroid/support/v4/widget/af;->a(Landroid/support/v4/widget/af$b;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;I)V
    .locals 0
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "maxpixels"    # I

    .prologue
    .line 243
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/ae$e;->e(Landroid/view/View;)V

    .line 244
    invoke-static {p1, p2}, Landroid/support/v4/widget/af;->a(Landroid/view/View;I)V

    .line 245
    return-void
.end method

.method public a(Landroid/view/View;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "searchableComponent"    # Landroid/content/ComponentName;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/ae$e;->e(Landroid/view/View;)V

    .line 145
    invoke-static {p1, p2}, Landroid/support/v4/widget/af;->a(Landroid/view/View;Landroid/content/ComponentName;)V

    .line 146
    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v4/widget/ae$a;)V
    .locals 1
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "listener"    # Landroid/support/v4/widget/ae$a;

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/ae$e;->e(Landroid/view/View;)V

    .line 184
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/ae$e;->a(Landroid/support/v4/widget/ae$a;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/widget/af;->b(Landroid/view/View;Ljava/lang/Object;)V

    .line 185
    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v4/widget/ae$c;)V
    .locals 1
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "listener"    # Landroid/support/v4/widget/ae$c;

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/ae$e;->e(Landroid/view/View;)V

    .line 167
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/ae$e;->a(Landroid/support/v4/widget/ae$c;)Ljava/lang/Object;

    move-result-object v0

    .line 166
    invoke-static {p1, v0}, Landroid/support/v4/widget/af;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 168
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "hint"    # Ljava/lang/CharSequence;

    .prologue
    .line 201
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/ae$e;->e(Landroid/view/View;)V

    .line 202
    invoke-static {p1, p2}, Landroid/support/v4/widget/af;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 203
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/CharSequence;Z)V
    .locals 0
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "query"    # Ljava/lang/CharSequence;
    .param p3, "submit"    # Z

    .prologue
    .line 195
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/ae$e;->e(Landroid/view/View;)V

    .line 196
    invoke-static {p1, p2, p3}, Landroid/support/v4/widget/af;->a(Landroid/view/View;Ljava/lang/CharSequence;Z)V

    .line 197
    return-void
.end method

.method public a(Landroid/view/View;Z)V
    .locals 0
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "iconify"    # Z

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/ae$e;->e(Landroid/view/View;)V

    .line 208
    invoke-static {p1, p2}, Landroid/support/v4/widget/af;->a(Landroid/view/View;Z)V

    .line 209
    return-void
.end method

.method public b(Landroid/view/View;Z)V
    .locals 0
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/ae$e;->e(Landroid/view/View;)V

    .line 220
    invoke-static {p1, p2}, Landroid/support/v4/widget/af;->b(Landroid/view/View;Z)V

    .line 221
    return-void
.end method

.method public b(Landroid/view/View;)Z
    .locals 1
    .param p1, "searchView"    # Landroid/view/View;

    .prologue
    .line 213
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/ae$e;->e(Landroid/view/View;)V

    .line 214
    invoke-static {p1}, Landroid/support/v4/widget/af;->c(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public c(Landroid/view/View;Z)V
    .locals 0
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "enable"    # Z

    .prologue
    .line 231
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/ae$e;->e(Landroid/view/View;)V

    .line 232
    invoke-static {p1, p2}, Landroid/support/v4/widget/af;->c(Landroid/view/View;Z)V

    .line 233
    return-void
.end method

.method public c(Landroid/view/View;)Z
    .locals 1
    .param p1, "searchView"    # Landroid/view/View;

    .prologue
    .line 225
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/ae$e;->e(Landroid/view/View;)V

    .line 226
    invoke-static {p1}, Landroid/support/v4/widget/af;->d(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public d(Landroid/view/View;)Z
    .locals 1
    .param p1, "searchView"    # Landroid/view/View;

    .prologue
    .line 237
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/ae$e;->e(Landroid/view/View;)V

    .line 238
    invoke-static {p1}, Landroid/support/v4/widget/af;->e(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method protected e(Landroid/view/View;)V
    .locals 0
    .param p1, "searchView"    # Landroid/view/View;

    .prologue
    .line 248
    invoke-static {p1}, Landroid/support/v4/widget/af;->a(Landroid/view/View;)V

    .line 249
    return-void
.end method
