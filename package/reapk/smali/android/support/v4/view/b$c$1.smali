.class Landroid/support/v4/view/b$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/b$c;->a(Landroid/support/v4/view/b;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/view/b;

.field final synthetic b:Landroid/support/v4/view/b$c;


# direct methods
.method constructor <init>(Landroid/support/v4/view/b$c;Landroid/support/v4/view/b;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/view/b$c;

    .prologue
    .line 232
    iput-object p1, p0, Landroid/support/v4/view/b$c$1;->b:Landroid/support/v4/view/b$c;

    iput-object p2, p0, Landroid/support/v4/view/b$c$1;->a:Landroid/support/v4/view/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Ljava/lang/Object;
    .locals 2
    .param p1, "host"    # Landroid/view/View;

    .prologue
    .line 273
    iget-object v1, p0, Landroid/support/v4/view/b$c$1;->a:Landroid/support/v4/view/b;

    .line 274
    invoke-virtual {v1, p1}, Landroid/support/v4/view/b;->a(Landroid/view/View;)Landroid/support/v4/view/a/r;

    move-result-object v0

    .line 275
    .local v0, "provider":Landroid/support/v4/view/a/r;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/view/a/r;->a()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/View;I)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "eventType"    # I

    .prologue
    .line 263
    iget-object v0, p0, Landroid/support/v4/view/b$c$1;->a:Landroid/support/v4/view/b;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/b;->a(Landroid/view/View;I)V

    .line 264
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Ljava/lang/Object;

    .prologue
    .line 246
    iget-object v0, p0, Landroid/support/v4/view/b$c$1;->a:Landroid/support/v4/view/b;

    new-instance v1, Landroid/support/v4/view/a/h;

    invoke-direct {v1, p2}, Landroid/support/v4/view/a/h;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/view/b;->a(Landroid/view/View;Landroid/support/v4/view/a/h;)V

    .line 248
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 280
    iget-object v0, p0, Landroid/support/v4/view/b$c$1;->a:Landroid/support/v4/view/b;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/b;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 236
    iget-object v0, p0, Landroid/support/v4/view/b$c$1;->a:Landroid/support/v4/view/b;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/b;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 258
    iget-object v0, p0, Landroid/support/v4/view/b$c$1;->a:Landroid/support/v4/view/b;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/b;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 241
    iget-object v0, p0, Landroid/support/v4/view/b$c$1;->a:Landroid/support/v4/view/b;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/b;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 242
    return-void
.end method

.method public c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 252
    iget-object v0, p0, Landroid/support/v4/view/b$c$1;->a:Landroid/support/v4/view/b;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/b;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 253
    return-void
.end method

.method public d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 268
    iget-object v0, p0, Landroid/support/v4/view/b$c$1;->a:Landroid/support/v4/view/b;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/b;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 269
    return-void
.end method
