.class final Lcom/squareup/wire/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/squareup/wire/Message",
        "<TM;TB;>;B:",
        "Lcom/squareup/wire/Message$a",
        "<TM;TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/squareup/wire/WireField$Label;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Z

.field private final f:Ljava/lang/reflect/Field;

.field private final g:Ljava/lang/reflect/Field;

.field private final h:Ljava/lang/reflect/Method;

.field private i:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter",
            "<*>;"
        }
    .end annotation
.end field

.field private j:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/squareup/wire/WireField;Ljava/lang/reflect/Field;Ljava/lang/Class;)V
    .locals 2
    .param p1, "wireField"    # Lcom/squareup/wire/WireField;
    .param p2, "messageField"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/WireField;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class",
            "<TB;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/squareup/wire/a;, "Lcom/squareup/wire/a<TM;TB;>;"
    .local p3, "builderType":Ljava/lang/Class;, "Ljava/lang/Class<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-interface {p1}, Lcom/squareup/wire/WireField;->c()Lcom/squareup/wire/WireField$Label;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/wire/a;->a:Lcom/squareup/wire/WireField$Label;

    .line 60
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/wire/a;->b:Ljava/lang/String;

    .line 61
    invoke-interface {p1}, Lcom/squareup/wire/WireField;->a()I

    move-result v0

    iput v0, p0, Lcom/squareup/wire/a;->c:I

    .line 62
    invoke-interface {p1}, Lcom/squareup/wire/WireField;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/wire/a;->d:Ljava/lang/String;

    .line 63
    invoke-interface {p1}, Lcom/squareup/wire/WireField;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/squareup/wire/a;->e:Z

    .line 64
    iput-object p2, p0, Lcom/squareup/wire/a;->f:Ljava/lang/reflect/Field;

    .line 65
    iget-object v0, p0, Lcom/squareup/wire/a;->b:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/squareup/wire/a;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/wire/a;->g:Ljava/lang/reflect/Field;

    .line 66
    iget-object v0, p0, Lcom/squareup/wire/a;->b:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p3, v0, v1}, Lcom/squareup/wire/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/wire/a;->h:Ljava/lang/reflect/Method;

    .line 67
    return-void
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "builderType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No builder field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "builderType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No builder method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 41
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method a()Lcom/squareup/wire/ProtoAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/ProtoAdapter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lcom/squareup/wire/a;, "Lcom/squareup/wire/a<TM;TB;>;"
    iget-object v0, p0, Lcom/squareup/wire/a;->i:Lcom/squareup/wire/ProtoAdapter;

    .line 71
    .local v0, "result":Lcom/squareup/wire/ProtoAdapter;, "Lcom/squareup/wire/ProtoAdapter<*>;"
    if-eqz v0, :cond_0

    .end local v0    # "result":Lcom/squareup/wire/ProtoAdapter;, "Lcom/squareup/wire/ProtoAdapter<*>;"
    :goto_0
    return-object v0

    .restart local v0    # "result":Lcom/squareup/wire/ProtoAdapter;, "Lcom/squareup/wire/ProtoAdapter<*>;"
    :cond_0
    iget-object v1, p0, Lcom/squareup/wire/a;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/squareup/wire/ProtoAdapter;->a(Ljava/lang/String;)Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    .end local v0    # "result":Lcom/squareup/wire/ProtoAdapter;, "Lcom/squareup/wire/ProtoAdapter<*>;"
    iput-object v0, p0, Lcom/squareup/wire/a;->i:Lcom/squareup/wire/ProtoAdapter;

    goto :goto_0
.end method

.method a(Lcom/squareup/wire/Message$a;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lcom/squareup/wire/a;, "Lcom/squareup/wire/a<TM;TB;>;"
    .local p1, "builder":Lcom/squareup/wire/Message$a;, "TB;"
    :try_start_0
    iget-object v1, p0, Lcom/squareup/wire/a;->g:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method a(Lcom/squareup/wire/Message;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lcom/squareup/wire/a;, "Lcom/squareup/wire/a<TM;TB;>;"
    .local p1, "message":Lcom/squareup/wire/Message;, "TM;"
    :try_start_0
    iget-object v1, p0, Lcom/squareup/wire/a;->f:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method a(Lcom/squareup/wire/Message$a;Ljava/lang/Object;)V
    .locals 3
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lcom/squareup/wire/a;, "Lcom/squareup/wire/a<TM;TB;>;"
    .local p1, "builder":Lcom/squareup/wire/Message$a;, "TB;"
    iget-object v2, p0, Lcom/squareup/wire/a;->a:Lcom/squareup/wire/WireField$Label;

    invoke-virtual {v2}, Lcom/squareup/wire/WireField$Label;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    :try_start_0
    iget-object v2, p0, Lcom/squareup/wire/a;->g:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 86
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 91
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/a;->b(Lcom/squareup/wire/Message$a;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method b()Lcom/squareup/wire/ProtoAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/ProtoAdapter",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lcom/squareup/wire/a;, "Lcom/squareup/wire/a<TM;TB;>;"
    iget-object v0, p0, Lcom/squareup/wire/a;->j:Lcom/squareup/wire/ProtoAdapter;

    .line 76
    .local v0, "result":Lcom/squareup/wire/ProtoAdapter;, "Lcom/squareup/wire/ProtoAdapter<Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 78
    .end local v0    # "result":Lcom/squareup/wire/ProtoAdapter;, "Lcom/squareup/wire/ProtoAdapter<Ljava/lang/Object;>;"
    :goto_0
    return-object v0

    .restart local v0    # "result":Lcom/squareup/wire/ProtoAdapter;, "Lcom/squareup/wire/ProtoAdapter<Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/wire/a;->a()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/wire/a;->a:Lcom/squareup/wire/WireField$Label;

    invoke-virtual {v1, v2}, Lcom/squareup/wire/ProtoAdapter;->a(Lcom/squareup/wire/WireField$Label;)Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    .end local v0    # "result":Lcom/squareup/wire/ProtoAdapter;, "Lcom/squareup/wire/ProtoAdapter<Ljava/lang/Object;>;"
    iput-object v0, p0, Lcom/squareup/wire/a;->j:Lcom/squareup/wire/ProtoAdapter;

    goto :goto_0
.end method

.method b(Lcom/squareup/wire/Message$a;Ljava/lang/Object;)V
    .locals 4
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lcom/squareup/wire/a;, "Lcom/squareup/wire/a<TM;TB;>;"
    .local p1, "builder":Lcom/squareup/wire/Message$a;, "TB;"
    :try_start_0
    iget-object v1, p0, Lcom/squareup/wire/a;->a:Lcom/squareup/wire/WireField$Label;

    invoke-virtual {v1}, Lcom/squareup/wire/WireField$Label;->isOneOf()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/squareup/wire/a;->h:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/squareup/wire/a;->g:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 105
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method
