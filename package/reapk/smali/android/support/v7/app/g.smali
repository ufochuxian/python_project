.class abstract Landroid/support/v7/app/g;
.super Landroid/support/v7/app/f;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation build Landroid/support/annotation/ae;
    a = 0x9
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/g$b;,
        Landroid/support/v7/app/g$a;
    }
.end annotation


# static fields
.field static final j:Z = false

.field static final k:Ljava/lang/String; = ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info."

.field private static x:Z

.field private static final y:Z

.field private static final z:[I


# instance fields
.field private A:Ljava/lang/CharSequence;

.field private B:Z

.field private C:Z

.field final l:Landroid/content/Context;

.field final m:Landroid/view/Window;

.field final n:Landroid/view/Window$Callback;

.field final o:Landroid/view/Window$Callback;

.field final p:Landroid/support/v7/app/e;

.field q:Landroid/support/v7/app/a;

.field r:Landroid/view/MenuInflater;

.field s:Z

.field t:Z

.field u:Z

.field v:Z

.field w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 48
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v1, v4, :cond_1

    move v1, v2

    :goto_0
    sput-boolean v1, Landroid/support/v7/app/g;->y:Z

    .line 55
    sget-boolean v1, Landroid/support/v7/app/g;->y:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Landroid/support/v7/app/g;->x:Z

    if-nez v1, :cond_0

    .line 57
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 59
    .local v0, "defHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    new-instance v1, Landroid/support/v7/app/g$1;

    invoke-direct {v1, v0}, Landroid/support/v7/app/g$1;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 84
    sput-boolean v2, Landroid/support/v7/app/g;->x:Z

    .line 88
    :cond_0
    new-array v1, v2, [I

    const v2, 0x1010054

    aput v2, v1, v3

    sput-object v1, Landroid/support/v7/app/g;->z:[I

    return-void

    .end local v0    # "defHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    :cond_1
    move v1, v3

    .line 48
    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/e;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "window"    # Landroid/view/Window;
    .param p3, "callback"    # Landroid/support/v7/app/e;

    .prologue
    .line 115
    invoke-direct {p0}, Landroid/support/v7/app/f;-><init>()V

    .line 116
    iput-object p1, p0, Landroid/support/v7/app/g;->l:Landroid/content/Context;

    .line 117
    iput-object p2, p0, Landroid/support/v7/app/g;->m:Landroid/view/Window;

    .line 118
    iput-object p3, p0, Landroid/support/v7/app/g;->p:Landroid/support/v7/app/e;

    .line 120
    iget-object v2, p0, Landroid/support/v7/app/g;->m:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/app/g;->n:Landroid/view/Window$Callback;

    .line 121
    iget-object v2, p0, Landroid/support/v7/app/g;->n:Landroid/view/Window$Callback;

    instance-of v2, v2, Landroid/support/v7/app/g$b;

    if-eqz v2, :cond_0

    .line 122
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "AppCompat has already installed itself into the Window"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 125
    :cond_0
    iget-object v2, p0, Landroid/support/v7/app/g;->n:Landroid/view/Window$Callback;

    invoke-virtual {p0, v2}, Landroid/support/v7/app/g;->a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/app/g;->o:Landroid/view/Window$Callback;

    .line 127
    iget-object v2, p0, Landroid/support/v7/app/g;->m:Landroid/view/Window;

    iget-object v3, p0, Landroid/support/v7/app/g;->o:Landroid/view/Window$Callback;

    invoke-virtual {v2, v3}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 129
    const/4 v2, 0x0

    sget-object v3, Landroid/support/v7/app/g;->z:[I

    invoke-static {p1, v2, v3}, Landroid/support/v7/widget/at;->a(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/support/v7/widget/at;

    move-result-object v0

    .line 131
    .local v0, "a":Landroid/support/v7/widget/at;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/at;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 132
    .local v1, "winBg":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 133
    iget-object v2, p0, Landroid/support/v7/app/g;->m:Landroid/view/Window;

    invoke-virtual {v2, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/at;->e()V

    .line 136
    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/app/a;
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Landroid/support/v7/app/g;->n()V

    .line 149
    iget-object v0, p0, Landroid/support/v7/app/g;->q:Landroid/support/v7/app/a;

    return-object v0
.end method

.method a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1
    .param p1, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 141
    new-instance v0, Landroid/support/v7/app/g$b;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/g$b;-><init>(Landroid/support/v7/app/g;Landroid/view/Window$Callback;)V

    return-object v0
.end method

.method abstract a(ILandroid/view/Menu;)V
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 291
    iput-object p1, p0, Landroid/support/v7/app/g;->A:Ljava/lang/CharSequence;

    .line 292
    invoke-virtual {p0, p1}, Landroid/support/v7/app/g;->b(Ljava/lang/CharSequence;)V

    .line 293
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 263
    return-void
.end method

.method abstract a(ILandroid/view/KeyEvent;)Z
.end method

.method abstract a(Landroid/view/KeyEvent;)Z
.end method

.method abstract b(Landroid/support/v7/view/b$a;)Landroid/support/v7/view/b;
.end method

.method public b()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Landroid/support/v7/app/g;->r:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 160
    invoke-virtual {p0}, Landroid/support/v7/app/g;->n()V

    .line 161
    new-instance v1, Landroid/support/v7/view/g;

    iget-object v0, p0, Landroid/support/v7/app/g;->q:Landroid/support/v7/app/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/g;->q:Landroid/support/v7/app/a;

    .line 162
    invoke-virtual {v0}, Landroid/support/v7/app/a;->p()Landroid/content/Context;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Landroid/support/v7/view/g;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/app/g;->r:Landroid/view/MenuInflater;

    .line 164
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/g;->r:Landroid/view/MenuInflater;

    return-object v0

    .line 162
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/g;->l:Landroid/content/Context;

    goto :goto_0
.end method

.method abstract b(Ljava/lang/CharSequence;)V
.end method

.method abstract b(ILandroid/view/Menu;)Z
.end method

.method public c()V
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/g;->B:Z

    .line 248
    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 298
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/g;->B:Z

    .line 253
    return-void
.end method

.method public e(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 179
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/g;->C:Z

    .line 258
    return-void
.end method

.method public final h()Landroid/support/v7/app/b$a;
    .locals 1

    .prologue
    .line 183
    new-instance v0, Landroid/support/v7/app/g$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/g$a;-><init>(Landroid/support/v7/app/g;)V

    return-object v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method abstract n()V
.end method

.method final o()Landroid/support/v7/app/a;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Landroid/support/v7/app/g;->q:Landroid/support/v7/app/a;

    return-object v0
.end method

.method final p()Landroid/content/Context;
    .locals 2

    .prologue
    .line 187
    const/4 v1, 0x0

    .line 190
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/support/v7/app/g;->a()Landroid/support/v7/app/a;

    move-result-object v0

    .line 191
    .local v0, "ab":Landroid/support/v7/app/a;
    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Landroid/support/v7/app/a;->p()Landroid/content/Context;

    move-result-object v1

    .line 195
    :cond_0
    if-nez v1, :cond_1

    .line 196
    iget-object v1, p0, Landroid/support/v7/app/g;->l:Landroid/content/Context;

    .line 198
    :cond_1
    return-object v1
.end method

.method final q()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Landroid/support/v7/app/g;->C:Z

    return v0
.end method

.method final r()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Landroid/support/v7/app/g;->B:Z

    return v0
.end method

.method final s()Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Landroid/support/v7/app/g;->m:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    return-object v0
.end method

.method final t()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Landroid/support/v7/app/g;->n:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Landroid/support/v7/app/g;->n:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 308
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/g;->A:Ljava/lang/CharSequence;

    goto :goto_0
.end method