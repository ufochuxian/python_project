.class public Landroid/support/constraint/solver/SolverVariable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/solver/SolverVariable$Strength;,
        Landroid/support/constraint/solver/SolverVariable$Type;,
        Landroid/support/constraint/solver/SolverVariable$a;
    }
.end annotation


# static fields
.field public static final a:Z

.field static b:I

.field private static final k:Z


# instance fields
.field public c:I

.field public d:I

.field public e:I

.field public f:F

.field g:Landroid/support/constraint/solver/SolverVariable$Type;

.field h:Landroid/support/constraint/solver/SolverVariable$Strength;

.field i:[Landroid/support/constraint/solver/d;

.field j:I

.field private l:Ljava/lang/String;

.field private final m:Landroid/support/constraint/solver/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    sput v0, Landroid/support/constraint/solver/SolverVariable;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/support/constraint/solver/e;Landroid/support/constraint/solver/SolverVariable$Type;)V
    .locals 2
    .param p1, "cache"    # Landroid/support/constraint/solver/e;
    .param p2, "type"    # Landroid/support/constraint/solver/SolverVariable$Type;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v0, p0, Landroid/support/constraint/solver/SolverVariable;->c:I

    .line 37
    iput v0, p0, Landroid/support/constraint/solver/SolverVariable;->d:I

    .line 38
    iput v1, p0, Landroid/support/constraint/solver/SolverVariable;->e:I

    .line 42
    sget-object v0, Landroid/support/constraint/solver/SolverVariable$Strength;->WEAK:Landroid/support/constraint/solver/SolverVariable$Strength;

    iput-object v0, p0, Landroid/support/constraint/solver/SolverVariable;->h:Landroid/support/constraint/solver/SolverVariable$Strength;

    .line 57
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/support/constraint/solver/d;

    iput-object v0, p0, Landroid/support/constraint/solver/SolverVariable;->i:[Landroid/support/constraint/solver/d;

    .line 58
    iput v1, p0, Landroid/support/constraint/solver/SolverVariable;->j:I

    .line 124
    iput-object p1, p0, Landroid/support/constraint/solver/SolverVariable;->m:Landroid/support/constraint/solver/e;

    .line 125
    iput-object p2, p0, Landroid/support/constraint/solver/SolverVariable;->g:Landroid/support/constraint/solver/SolverVariable$Type;

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/support/constraint/solver/e;Ljava/lang/String;Landroid/support/constraint/solver/SolverVariable$Type;)V
    .locals 2
    .param p1, "cache"    # Landroid/support/constraint/solver/e;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Landroid/support/constraint/solver/SolverVariable$Type;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v0, p0, Landroid/support/constraint/solver/SolverVariable;->c:I

    .line 37
    iput v0, p0, Landroid/support/constraint/solver/SolverVariable;->d:I

    .line 38
    iput v1, p0, Landroid/support/constraint/solver/SolverVariable;->e:I

    .line 42
    sget-object v0, Landroid/support/constraint/solver/SolverVariable$Strength;->WEAK:Landroid/support/constraint/solver/SolverVariable$Strength;

    iput-object v0, p0, Landroid/support/constraint/solver/SolverVariable;->h:Landroid/support/constraint/solver/SolverVariable$Strength;

    .line 57
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/support/constraint/solver/d;

    iput-object v0, p0, Landroid/support/constraint/solver/SolverVariable;->i:[Landroid/support/constraint/solver/d;

    .line 58
    iput v1, p0, Landroid/support/constraint/solver/SolverVariable;->j:I

    .line 118
    iput-object p1, p0, Landroid/support/constraint/solver/SolverVariable;->m:Landroid/support/constraint/solver/e;

    .line 119
    iput-object p2, p0, Landroid/support/constraint/solver/SolverVariable;->l:Ljava/lang/String;

    .line 120
    iput-object p3, p0, Landroid/support/constraint/solver/SolverVariable;->g:Landroid/support/constraint/solver/SolverVariable$Type;

    .line 121
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    sget v0, Landroid/support/constraint/solver/SolverVariable;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/support/constraint/solver/SolverVariable;->b:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "V"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/support/constraint/solver/SolverVariable;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/support/constraint/solver/SolverVariable$Type;Landroid/support/constraint/solver/SolverVariable$Strength;)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # Landroid/support/constraint/solver/SolverVariable$Type;
    .param p1, "strength"    # Landroid/support/constraint/solver/SolverVariable$Strength;

    .prologue
    .line 95
    sget v0, Landroid/support/constraint/solver/SolverVariable;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/support/constraint/solver/SolverVariable;->b:I

    .line 96
    sget-object v0, Landroid/support/constraint/solver/SolverVariable$1;->a:[I

    invoke-virtual {p0}, Landroid/support/constraint/solver/SolverVariable$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "V"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/support/constraint/solver/SolverVariable;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 97
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "U"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/support/constraint/solver/SolverVariable;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 98
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "C"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/support/constraint/solver/SolverVariable;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 99
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/support/constraint/solver/SolverVariable;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 101
    :pswitch_3
    sget-object v0, Landroid/support/constraint/solver/SolverVariable$Strength;->STRONG:Landroid/support/constraint/solver/SolverVariable$Strength;

    if-ne p1, v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "E"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/support/constraint/solver/SolverVariable;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/support/constraint/solver/SolverVariable;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public a(Landroid/support/constraint/solver/SolverVariable$Strength;)V
    .locals 0
    .param p1, "s"    # Landroid/support/constraint/solver/SolverVariable$Strength;

    .prologue
    .line 233
    iput-object p1, p0, Landroid/support/constraint/solver/SolverVariable;->h:Landroid/support/constraint/solver/SolverVariable$Strength;

    .line 237
    return-void
.end method

.method public a(Landroid/support/constraint/solver/SolverVariable$Type;)V
    .locals 0
    .param p1, "type"    # Landroid/support/constraint/solver/SolverVariable$Type;

    .prologue
    .line 222
    iput-object p1, p0, Landroid/support/constraint/solver/SolverVariable;->g:Landroid/support/constraint/solver/SolverVariable$Type;

    .line 226
    return-void
.end method

.method public a(Landroid/support/constraint/solver/d;)V
    .locals 3
    .param p1, "equation"    # Landroid/support/constraint/solver/d;

    .prologue
    .line 149
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/support/constraint/solver/SolverVariable;->j:I

    if-ge v0, v1, :cond_1

    .line 150
    iget-object v1, p0, Landroid/support/constraint/solver/SolverVariable;->i:[Landroid/support/constraint/solver/d;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 160
    :goto_1
    return-void

    .line 149
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_1
    iget v1, p0, Landroid/support/constraint/solver/SolverVariable;->j:I

    iget-object v2, p0, Landroid/support/constraint/solver/SolverVariable;->i:[Landroid/support/constraint/solver/d;

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 155
    iget-object v1, p0, Landroid/support/constraint/solver/SolverVariable;->i:[Landroid/support/constraint/solver/d;

    iget-object v2, p0, Landroid/support/constraint/solver/SolverVariable;->i:[Landroid/support/constraint/solver/d;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/support/constraint/solver/d;

    iput-object v1, p0, Landroid/support/constraint/solver/SolverVariable;->i:[Landroid/support/constraint/solver/d;

    .line 157
    :cond_2
    iget-object v1, p0, Landroid/support/constraint/solver/SolverVariable;->i:[Landroid/support/constraint/solver/d;

    iget v2, p0, Landroid/support/constraint/solver/SolverVariable;->j:I

    aput-object p1, v1, v2

    .line 159
    iget v1, p0, Landroid/support/constraint/solver/SolverVariable;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/SolverVariable;->j:I

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 220
    iput-object p1, p0, Landroid/support/constraint/solver/SolverVariable;->l:Ljava/lang/String;

    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/SolverVariable;->l:Ljava/lang/String;

    .line 194
    sget-object v0, Landroid/support/constraint/solver/SolverVariable$Type;->UNKNOWN:Landroid/support/constraint/solver/SolverVariable$Type;

    iput-object v0, p0, Landroid/support/constraint/solver/SolverVariable;->g:Landroid/support/constraint/solver/SolverVariable$Type;

    .line 195
    sget-object v0, Landroid/support/constraint/solver/SolverVariable$Strength;->STRONG:Landroid/support/constraint/solver/SolverVariable$Strength;

    iput-object v0, p0, Landroid/support/constraint/solver/SolverVariable;->h:Landroid/support/constraint/solver/SolverVariable$Strength;

    .line 196
    iput v2, p0, Landroid/support/constraint/solver/SolverVariable;->e:I

    .line 197
    iput v1, p0, Landroid/support/constraint/solver/SolverVariable;->c:I

    .line 198
    iput v1, p0, Landroid/support/constraint/solver/SolverVariable;->d:I

    .line 199
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/SolverVariable;->f:F

    .line 208
    iput v2, p0, Landroid/support/constraint/solver/SolverVariable;->j:I

    .line 209
    return-void
.end method

.method public b(Landroid/support/constraint/solver/d;)V
    .locals 6
    .param p1, "equation"    # Landroid/support/constraint/solver/d;

    .prologue
    .line 180
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/support/constraint/solver/SolverVariable;->j:I

    if-ge v0, v2, :cond_1

    .line 181
    iget-object v2, p0, Landroid/support/constraint/solver/SolverVariable;->i:[Landroid/support/constraint/solver/d;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_2

    .line 182
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v2, p0, Landroid/support/constraint/solver/SolverVariable;->j:I

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 183
    iget-object v2, p0, Landroid/support/constraint/solver/SolverVariable;->i:[Landroid/support/constraint/solver/d;

    add-int v3, v0, v1

    iget-object v4, p0, Landroid/support/constraint/solver/SolverVariable;->i:[Landroid/support/constraint/solver/d;

    add-int v5, v0, v1

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 185
    :cond_0
    iget v2, p0, Landroid/support/constraint/solver/SolverVariable;->j:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/support/constraint/solver/SolverVariable;->j:I

    .line 190
    .end local v1    # "j":I
    :cond_1
    return-void

    .line 180
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Landroid/support/constraint/solver/SolverVariable;->l:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 244
    const-string v0, ""

    .line 248
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/constraint/solver/SolverVariable;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    return-object v0
.end method
