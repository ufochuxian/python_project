.class public Lcom/bumptech/glide/d/j;
.super Landroid/app/Fragment;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/d/j$1;,
        Lcom/bumptech/glide/d/j$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/d/a;

.field private final b:Lcom/bumptech/glide/d/l;

.field private c:Lcom/bumptech/glide/o;

.field private final d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/bumptech/glide/d/j;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/bumptech/glide/d/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/bumptech/glide/d/a;

    invoke-direct {v0}, Lcom/bumptech/glide/d/a;-><init>()V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/d/j;-><init>(Lcom/bumptech/glide/d/a;)V

    .line 35
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/d/a;)V
    .locals 2
    .param p1, "lifecycle"    # Lcom/bumptech/glide/d/a;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 27
    new-instance v0, Lcom/bumptech/glide/d/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bumptech/glide/d/j$a;-><init>(Lcom/bumptech/glide/d/j;Lcom/bumptech/glide/d/j$1;)V

    iput-object v0, p0, Lcom/bumptech/glide/d/j;->b:Lcom/bumptech/glide/d/l;

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d/j;->d:Ljava/util/HashSet;

    .line 40
    iput-object p1, p0, Lcom/bumptech/glide/d/j;->a:Lcom/bumptech/glide/d/a;

    .line 41
    return-void
.end method

.method private a(Lcom/bumptech/glide/d/j;)V
    .locals 1
    .param p1, "child"    # Lcom/bumptech/glide/d/j;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/bumptech/glide/d/j;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method private a(Landroid/app/Fragment;)Z
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/bumptech/glide/d/j;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 105
    .local v0, "root":Landroid/app/Fragment;
    :goto_0
    invoke-virtual {p1}, Landroid/app/Fragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 106
    invoke-virtual {p1}, Landroid/app/Fragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 107
    const/4 v1, 0x1

    .line 111
    :goto_1
    return v1

    .line 109
    :cond_0
    invoke-virtual {p1}, Landroid/app/Fragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object p1

    goto :goto_0

    .line 111
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private b(Lcom/bumptech/glide/d/j;)V
    .locals 1
    .param p1, "child"    # Lcom/bumptech/glide/d/j;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/bumptech/glide/d/j;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method


# virtual methods
.method a()Lcom/bumptech/glide/d/a;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/bumptech/glide/d/j;->a:Lcom/bumptech/glide/d/a;

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/o;)V
    .locals 0
    .param p1, "requestManager"    # Lcom/bumptech/glide/o;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/bumptech/glide/d/j;->c:Lcom/bumptech/glide/o;

    .line 50
    return-void
.end method

.method public b()Lcom/bumptech/glide/o;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/bumptech/glide/d/j;->c:Lcom/bumptech/glide/o;

    return-object v0
.end method

.method public c()Lcom/bumptech/glide/d/l;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/bumptech/glide/d/j;->b:Lcom/bumptech/glide/d/l;

    return-object v0
.end method

.method public d()Ljava/util/Set;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/bumptech/glide/d/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v3, p0, Lcom/bumptech/glide/d/j;->e:Lcom/bumptech/glide/d/j;

    if-ne v3, p0, :cond_0

    .line 82
    iget-object v3, p0, Lcom/bumptech/glide/d/j;->d:Ljava/util/HashSet;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 95
    :goto_0
    return-object v3

    .line 83
    :cond_0
    iget-object v3, p0, Lcom/bumptech/glide/d/j;->e:Lcom/bumptech/glide/d/j;

    if-eqz v3, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-ge v3, v4, :cond_2

    .line 86
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    goto :goto_0

    .line 88
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 90
    .local v0, "descendants":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/bumptech/glide/d/j;>;"
    iget-object v3, p0, Lcom/bumptech/glide/d/j;->e:Lcom/bumptech/glide/d/j;

    invoke-virtual {v3}, Lcom/bumptech/glide/d/j;->d()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/d/j;

    .line 91
    .local v1, "fragment":Lcom/bumptech/glide/d/j;
    invoke-virtual {v1}, Lcom/bumptech/glide/d/j;->getParentFragment()Landroid/app/Fragment;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/bumptech/glide/d/j;->a(Landroid/app/Fragment;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 92
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 95
    .end local v1    # "fragment":Lcom/bumptech/glide/d/j;
    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 117
    invoke-static {}, Lcom/bumptech/glide/d/k;->a()Lcom/bumptech/glide/d/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bumptech/glide/d/j;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/d/k;->a(Landroid/app/FragmentManager;)Lcom/bumptech/glide/d/j;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d/j;->e:Lcom/bumptech/glide/d/j;

    .line 119
    iget-object v0, p0, Lcom/bumptech/glide/d/j;->e:Lcom/bumptech/glide/d/j;

    if-eq v0, p0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/bumptech/glide/d/j;->e:Lcom/bumptech/glide/d/j;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/d/j;->a(Lcom/bumptech/glide/d/j;)V

    .line 122
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 148
    iget-object v0, p0, Lcom/bumptech/glide/d/j;->a:Lcom/bumptech/glide/d/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/a;->c()V

    .line 149
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 127
    iget-object v0, p0, Lcom/bumptech/glide/d/j;->e:Lcom/bumptech/glide/d/j;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/bumptech/glide/d/j;->e:Lcom/bumptech/glide/d/j;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/d/j;->b(Lcom/bumptech/glide/d/j;)V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/d/j;->e:Lcom/bumptech/glide/d/j;

    .line 131
    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/bumptech/glide/d/j;->c:Lcom/bumptech/glide/o;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/bumptech/glide/d/j;->c:Lcom/bumptech/glide/o;

    invoke-virtual {v0}, Lcom/bumptech/glide/o;->a()V

    .line 167
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 136
    iget-object v0, p0, Lcom/bumptech/glide/d/j;->a:Lcom/bumptech/glide/d/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/a;->a()V

    .line 137
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 142
    iget-object v0, p0, Lcom/bumptech/glide/d/j;->a:Lcom/bumptech/glide/d/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/d/a;->b()V

    .line 143
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lcom/bumptech/glide/d/j;->c:Lcom/bumptech/glide/o;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/bumptech/glide/d/j;->c:Lcom/bumptech/glide/o;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/o;->a(I)V

    .line 158
    :cond_0
    return-void
.end method