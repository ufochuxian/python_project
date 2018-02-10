.class final Lorg/jsoup/c/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jsoup/select/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lorg/jsoup/c/a;

.field private b:I

.field private final c:Lorg/jsoup/nodes/f;

.field private d:Lorg/jsoup/nodes/f;


# direct methods
.method private constructor <init>(Lorg/jsoup/c/a;Lorg/jsoup/nodes/f;Lorg/jsoup/nodes/f;)V
    .locals 1
    .param p2, "root"    # Lorg/jsoup/nodes/f;
    .param p3, "destination"    # Lorg/jsoup/nodes/f;

    .prologue
    .line 77
    iput-object p1, p0, Lorg/jsoup/c/a$a;->a:Lorg/jsoup/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lorg/jsoup/c/a$a;->b:I

    .line 78
    iput-object p2, p0, Lorg/jsoup/c/a$a;->c:Lorg/jsoup/nodes/f;

    .line 79
    iput-object p3, p0, Lorg/jsoup/c/a$a;->d:Lorg/jsoup/nodes/f;

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Lorg/jsoup/c/a;Lorg/jsoup/nodes/f;Lorg/jsoup/nodes/f;Lorg/jsoup/c/a$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jsoup/c/a;
    .param p2, "x1"    # Lorg/jsoup/nodes/f;
    .param p3, "x2"    # Lorg/jsoup/nodes/f;
    .param p4, "x3"    # Lorg/jsoup/c/a$1;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lorg/jsoup/c/a$a;-><init>(Lorg/jsoup/c/a;Lorg/jsoup/nodes/f;Lorg/jsoup/nodes/f;)V

    return-void
.end method

.method static synthetic a(Lorg/jsoup/c/a$a;)I
    .locals 1
    .param p0, "x0"    # Lorg/jsoup/c/a$a;

    .prologue
    .line 72
    iget v0, p0, Lorg/jsoup/c/a$a;->b:I

    return v0
.end method


# virtual methods
.method public a(Lorg/jsoup/nodes/h;I)V
    .locals 7
    .param p1, "source"    # Lorg/jsoup/nodes/h;
    .param p2, "depth"    # I

    .prologue
    .line 83
    instance-of v5, p1, Lorg/jsoup/nodes/f;

    if-eqz v5, :cond_2

    move-object v3, p1

    .line 84
    check-cast v3, Lorg/jsoup/nodes/f;

    .line 86
    .local v3, "sourceEl":Lorg/jsoup/nodes/f;
    iget-object v5, p0, Lorg/jsoup/c/a$a;->a:Lorg/jsoup/c/a;

    invoke-static {v5}, Lorg/jsoup/c/a;->a(Lorg/jsoup/c/a;)Lorg/jsoup/c/b;

    move-result-object v5

    invoke-virtual {v3}, Lorg/jsoup/nodes/f;->m()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/jsoup/c/b;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 87
    iget-object v5, p0, Lorg/jsoup/c/a$a;->a:Lorg/jsoup/c/a;

    invoke-static {v5, v3}, Lorg/jsoup/c/a;->a(Lorg/jsoup/c/a;Lorg/jsoup/nodes/f;)Lorg/jsoup/c/a$b;

    move-result-object v2

    .line 88
    .local v2, "meta":Lorg/jsoup/c/a$b;
    iget-object v0, v2, Lorg/jsoup/c/a$b;->a:Lorg/jsoup/nodes/f;

    .line 89
    .local v0, "destChild":Lorg/jsoup/nodes/f;
    iget-object v5, p0, Lorg/jsoup/c/a$a;->d:Lorg/jsoup/nodes/f;

    invoke-virtual {v5, v0}, Lorg/jsoup/nodes/f;->a(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/f;

    .line 91
    iget v5, p0, Lorg/jsoup/c/a$a;->b:I

    iget v6, v2, Lorg/jsoup/c/a$b;->b:I

    add-int/2addr v5, v6

    iput v5, p0, Lorg/jsoup/c/a$a;->b:I

    .line 92
    iput-object v0, p0, Lorg/jsoup/c/a$a;->d:Lorg/jsoup/nodes/f;

    .line 103
    .end local v0    # "destChild":Lorg/jsoup/nodes/f;
    .end local v2    # "meta":Lorg/jsoup/c/a$b;
    .end local v3    # "sourceEl":Lorg/jsoup/nodes/f;
    :cond_0
    :goto_0
    return-void

    .line 93
    .restart local v3    # "sourceEl":Lorg/jsoup/nodes/f;
    :cond_1
    iget-object v5, p0, Lorg/jsoup/c/a$a;->c:Lorg/jsoup/nodes/f;

    if-eq p1, v5, :cond_0

    .line 94
    iget v5, p0, Lorg/jsoup/c/a$a;->b:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/jsoup/c/a$a;->b:I

    goto :goto_0

    .line 96
    .end local v3    # "sourceEl":Lorg/jsoup/nodes/f;
    :cond_2
    instance-of v5, p1, Lorg/jsoup/nodes/i;

    if-eqz v5, :cond_3

    move-object v4, p1

    .line 97
    check-cast v4, Lorg/jsoup/nodes/i;

    .line 98
    .local v4, "sourceText":Lorg/jsoup/nodes/i;
    new-instance v1, Lorg/jsoup/nodes/i;

    invoke-virtual {v4}, Lorg/jsoup/nodes/i;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lorg/jsoup/nodes/h;->O()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lorg/jsoup/nodes/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .local v1, "destText":Lorg/jsoup/nodes/i;
    iget-object v5, p0, Lorg/jsoup/c/a$a;->d:Lorg/jsoup/nodes/f;

    invoke-virtual {v5, v1}, Lorg/jsoup/nodes/f;->a(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/f;

    goto :goto_0

    .line 101
    .end local v1    # "destText":Lorg/jsoup/nodes/i;
    .end local v4    # "sourceText":Lorg/jsoup/nodes/i;
    :cond_3
    iget v5, p0, Lorg/jsoup/c/a$a;->b:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/jsoup/c/a$a;->b:I

    goto :goto_0
.end method

.method public b(Lorg/jsoup/nodes/h;I)V
    .locals 2
    .param p1, "source"    # Lorg/jsoup/nodes/h;
    .param p2, "depth"    # I

    .prologue
    .line 106
    instance-of v0, p1, Lorg/jsoup/nodes/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/c/a$a;->a:Lorg/jsoup/c/a;

    invoke-static {v0}, Lorg/jsoup/c/a;->a(Lorg/jsoup/c/a;)Lorg/jsoup/c/b;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jsoup/nodes/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jsoup/c/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lorg/jsoup/c/a$a;->d:Lorg/jsoup/nodes/f;

    invoke-virtual {v0}, Lorg/jsoup/nodes/f;->r()Lorg/jsoup/nodes/f;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/c/a$a;->d:Lorg/jsoup/nodes/f;

    .line 109
    :cond_0
    return-void
.end method
