.class public final Landroid/support/v4/view/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/k$b;,
        Landroid/support/v4/view/k$a;,
        Landroid/support/v4/view/k$c;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/view/k$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 130
    new-instance v0, Landroid/support/v4/view/k$b;

    invoke-direct {v0}, Landroid/support/v4/view/k$b;-><init>()V

    sput-object v0, Landroid/support/v4/view/k;->a:Landroid/support/v4/view/k$c;

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    new-instance v0, Landroid/support/v4/view/k$a;

    invoke-direct {v0}, Landroid/support/v4/view/k$a;-><init>()V

    sput-object v0, Landroid/support/v4/view/k;->a:Landroid/support/v4/view/k$c;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 1
    .param p0, "metaState"    # I

    .prologue
    .line 139
    sget-object v0, Landroid/support/v4/view/k;->a:Landroid/support/v4/view/k$c;

    invoke-interface {v0, p0}, Landroid/support/v4/view/k$c;->a(I)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;)Ljava/lang/Object;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 182
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    return-object v0
.end method

.method public static a(II)Z
    .locals 1
    .param p0, "metaState"    # I
    .param p1, "modifiers"    # I

    .prologue
    .line 143
    sget-object v0, Landroid/support/v4/view/k;->a:Landroid/support/v4/view/k$c;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/k$c;->a(II)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p0, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 155
    sget-object v0, Landroid/support/v4/view/k;->a:Landroid/support/v4/view/k$c;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/support/v4/view/k$c;->b(I)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/KeyEvent;I)Z
    .locals 2
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "modifiers"    # I

    .prologue
    .line 151
    sget-object v0, Landroid/support/v4/view/k;->a:Landroid/support/v4/view/k$c;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/k$c;->a(II)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/KeyEvent;Landroid/view/KeyEvent$Callback;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "receiver"    # Landroid/view/KeyEvent$Callback;
    .param p2, "state"    # Ljava/lang/Object;
    .param p3, "target"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 193
    check-cast p2, Landroid/view/KeyEvent$DispatcherState;

    .end local p2    # "state":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/KeyEvent;)V
    .locals 0
    .param p0, "event"    # Landroid/view/KeyEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p0}, Landroid/view/KeyEvent;->startTracking()V

    .line 165
    return-void
.end method

.method public static b(I)Z
    .locals 1
    .param p0, "metaState"    # I

    .prologue
    .line 147
    sget-object v0, Landroid/support/v4/view/k;->a:Landroid/support/v4/view/k$c;

    invoke-interface {v0, p0}, Landroid/support/v4/view/k$c;->b(I)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "event"    # Landroid/view/KeyEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 173
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    return v0
.end method

.method public static d(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 197
    sget-object v0, Landroid/support/v4/view/k;->a:Landroid/support/v4/view/k$c;

    invoke-interface {v0, p0}, Landroid/support/v4/view/k$c;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
