.class Lorg/xbill/DNS/ba$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xbill/DNS/ba$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/List;

.field private b:Ljava/util/List;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/xbill/DNS/ba$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/xbill/DNS/ba$1;

    .prologue
    .line 127
    invoke-direct {p0}, Lorg/xbill/DNS/ba$a;-><init>()V

    return-void
.end method

.method static a(Lorg/xbill/DNS/ba$a;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/xbill/DNS/ba$a;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/xbill/DNS/ba$a;->a:Ljava/util/List;

    return-object v0
.end method

.method static b(Lorg/xbill/DNS/ba$a;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/xbill/DNS/ba$a;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/xbill/DNS/ba$a;->b:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/ba$a;->a:Ljava/util/List;

    .line 133
    return-void
.end method

.method public a(Lorg/xbill/DNS/Record;)V
    .locals 4
    .param p1, "soa"    # Lorg/xbill/DNS/Record;

    .prologue
    .line 140
    new-instance v0, Lorg/xbill/DNS/ba$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/xbill/DNS/ba$b;-><init>(Lorg/xbill/DNS/ba$1;)V

    .line 141
    .local v0, "delta":Lorg/xbill/DNS/ba$b;
    iget-object v1, v0, Lorg/xbill/DNS/ba$b;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-static {p1}, Lorg/xbill/DNS/ba;->a(Lorg/xbill/DNS/Record;)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/xbill/DNS/ba$b;->a:J

    .line 143
    iget-object v1, p0, Lorg/xbill/DNS/ba$a;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/ba$a;->b:Ljava/util/List;

    .line 137
    return-void
.end method

.method public b(Lorg/xbill/DNS/Record;)V
    .locals 4
    .param p1, "soa"    # Lorg/xbill/DNS/Record;

    .prologue
    .line 147
    iget-object v1, p0, Lorg/xbill/DNS/ba$a;->b:Ljava/util/List;

    iget-object v2, p0, Lorg/xbill/DNS/ba$a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/ba$b;

    .line 148
    .local v0, "delta":Lorg/xbill/DNS/ba$b;
    iget-object v1, v0, Lorg/xbill/DNS/ba$b;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-static {p1}, Lorg/xbill/DNS/ba;->a(Lorg/xbill/DNS/Record;)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/xbill/DNS/ba$b;->b:J

    .line 150
    return-void
.end method

.method public c(Lorg/xbill/DNS/Record;)V
    .locals 4
    .param p1, "r"    # Lorg/xbill/DNS/Record;

    .prologue
    .line 154
    iget-object v2, p0, Lorg/xbill/DNS/ba$a;->b:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 155
    iget-object v2, p0, Lorg/xbill/DNS/ba$a;->b:Ljava/util/List;

    iget-object v3, p0, Lorg/xbill/DNS/ba$a;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/ba$b;

    .line 156
    .local v0, "delta":Lorg/xbill/DNS/ba$b;
    iget-object v2, v0, Lorg/xbill/DNS/ba$b;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 157
    iget-object v1, v0, Lorg/xbill/DNS/ba$b;->c:Ljava/util/List;

    .line 162
    .end local v0    # "delta":Lorg/xbill/DNS/ba$b;
    .local v1, "list":Ljava/util/List;
    :goto_0
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    return-void

    .line 159
    .end local v1    # "list":Ljava/util/List;
    .restart local v0    # "delta":Lorg/xbill/DNS/ba$b;
    :cond_0
    iget-object v1, v0, Lorg/xbill/DNS/ba$b;->d:Ljava/util/List;

    .restart local v1    # "list":Ljava/util/List;
    goto :goto_0

    .line 161
    .end local v0    # "delta":Lorg/xbill/DNS/ba$b;
    .end local v1    # "list":Ljava/util/List;
    :cond_1
    iget-object v1, p0, Lorg/xbill/DNS/ba$a;->a:Ljava/util/List;

    .restart local v1    # "list":Ljava/util/List;
    goto :goto_0
.end method
