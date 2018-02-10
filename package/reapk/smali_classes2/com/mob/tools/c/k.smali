.class public Lcom/mob/tools/c/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/c/k$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Lcom/mob/tools/gui/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mob/tools/gui/b",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lcom/mob/tools/gui/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mob/tools/gui/b",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 27
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/mob/tools/c/k;->a:Ljava/util/HashSet;

    .line 28
    sget-object v1, Lcom/mob/tools/c/k;->a:Ljava/util/HashSet;

    const-string v2, "java.lang"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v1, Lcom/mob/tools/c/k;->a:Ljava/util/HashSet;

    const-string v2, "java.io"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v1, Lcom/mob/tools/c/k;->a:Ljava/util/HashSet;

    const-string v2, "java.nio"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v1, Lcom/mob/tools/c/k;->a:Ljava/util/HashSet;

    const-string v2, "java.net"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v1, Lcom/mob/tools/c/k;->a:Ljava/util/HashSet;

    const-string v2, "java.util"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v1, Lcom/mob/tools/c/k;->a:Ljava/util/HashSet;

    const-string v2, "com.mob.tools"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v1, Lcom/mob/tools/c/k;->a:Ljava/util/HashSet;

    const-string v2, "com.mob.tools.gui"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v1, Lcom/mob/tools/c/k;->a:Ljava/util/HashSet;

    const-string v2, "com.mob.tools.log"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v1, Lcom/mob/tools/c/k;->a:Ljava/util/HashSet;

    const-string v2, "com.mob.tools.network"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v1, Lcom/mob/tools/c/k;->a:Ljava/util/HashSet;

    const-string v2, "com.mob.tools.utils"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/mob/tools/c/k;->b:Ljava/util/HashMap;

    .line 40
    sget-object v1, Lcom/mob/tools/c/k;->b:Ljava/util/HashMap;

    const-string v2, "double"

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v1, Lcom/mob/tools/c/k;->b:Ljava/util/HashMap;

    const-string v2, "float"

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v1, Lcom/mob/tools/c/k;->b:Ljava/util/HashMap;

    const-string v2, "long"

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v1, Lcom/mob/tools/c/k;->b:Ljava/util/HashMap;

    const-string v2, "int"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v1, Lcom/mob/tools/c/k;->b:Ljava/util/HashMap;

    const-string v2, "short"

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v1, Lcom/mob/tools/c/k;->b:Ljava/util/HashMap;

    const-string v2, "byte"

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v1, Lcom/mob/tools/c/k;->b:Ljava/util/HashMap;

    const-string v2, "char"

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v1, Lcom/mob/tools/c/k;->b:Ljava/util/HashMap;

    const-string v2, "boolean"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v1, Lcom/mob/tools/c/k;->b:Ljava/util/HashMap;

    const-string v2, "Object"

    const-class v3, Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v1, Lcom/mob/tools/c/k;->b:Ljava/util/HashMap;

    const-string v2, "String"

    const-class v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v1, Lcom/mob/tools/c/k;->b:Ljava/util/HashMap;

    const-string v2, "Thread"

    const-class v3, Ljava/lang/Thread;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v1, Lcom/mob/tools/c/k;->b:Ljava/util/HashMap;

    const-string v2, "Runnable"

    const-class v3, Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v1, Lcom/mob/tools/c/k;->b:Ljava/util/HashMap;

    const-string v2, "System"

    const-class v3, Ljava/lang/System;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v1, Lcom/mob/tools/c/k;->b:Ljava/util/HashMap;

    const-string v2, "double"

    const-class v3, Ljava/lang/Double;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v1, Lcom/mob/tools/c/k;->b:Ljava/util/HashMap;

    const-string v2, "Float"

    const-class v3, Ljava/lang/Float;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v1, Lcom/mob/tools/c/k;->b:Ljava/util/HashMap;

    const-string v2, "Long"

    const-class v3, Ljava/lang/Long;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v1, Lcom/mob/tools/c/k;->b:Ljava/util/HashMap;

    const-string v2, "Integer"

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v1, Lcom/mob/tools/c/k;->b:Ljava/util/HashMap;

    const-string v2, "Short"

    const-class v3, Ljava/lang/Short;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v1, Lcom/mob/tools/c/k;->b:Ljava/util/HashMap;

    const-string v2, "Byte"

    const-class v3, Ljava/lang/Byte;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v1, Lcom/mob/tools/c/k;->b:Ljava/util/HashMap;

    const-string v2, "Character"

    const-class v3, Ljava/lang/Character;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v1, Lcom/mob/tools/c/k;->b:Ljava/util/HashMap;

    const-string v2, "Boolean"

    const-class v3, Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/mob/tools/c/k;->c:Ljava/util/HashMap;

    .line 63
    sget-object v1, Lcom/mob/tools/c/k;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    check-cast v0, Ljava/util/Map$Entry;

    .line 64
    .restart local v0    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    sget-object v2, Lcom/mob/tools/c/k;->c:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 67
    :cond_0
    new-instance v1, Lcom/mob/tools/gui/b;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lcom/mob/tools/gui/b;-><init>(I)V

    sput-object v1, Lcom/mob/tools/c/k;->d:Lcom/mob/tools/gui/b;

    .line 68
    new-instance v1, Lcom/mob/tools/gui/b;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/mob/tools/gui/b;-><init>(I)V

    sput-object v1, Lcom/mob/tools/c/k;->e:Lcom/mob/tools/gui/b;

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p0, "receiver"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 557
    :try_start_0
    invoke-static {p0, p1}, Lcom/mob/tools/c/k;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 558
    :catch_0
    move-exception v1

    .line 559
    .local v1, "t":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/NoSuchFieldException;

    if-eqz v2, :cond_0

    .line 560
    throw v1

    .line 562
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "className: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fieldName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "receiver"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 448
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2, p0, p1, p2}, Lcom/mob/tools/c/k;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 449
    :catch_0
    move-exception v1

    .line 450
    .local v1, "t":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/NoSuchMethodException;

    if-eqz v2, :cond_0

    .line 451
    throw v1

    .line 453
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "className: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", methodName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static varargs a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 33
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 336
    if-nez p1, :cond_0

    .line 337
    invoke-static/range {p0 .. p0}, Lcom/mob/tools/c/k;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 341
    .local v8, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "#"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "#"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 342
    .local v19, "mthSign":Ljava/lang/String;
    sget-object v28, Lcom/mob/tools/c/k;->d:Lcom/mob/tools/gui/b;

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/mob/tools/gui/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/reflect/Method;

    .line 343
    .local v18, "mth":Ljava/lang/reflect/Method;
    invoke-static/range {p3 .. p3}, Lcom/mob/tools/c/k;->a([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v27

    .line 344
    .local v27, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v18, :cond_4

    .line 345
    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v14

    .line 346
    .local v14, "isReqStatic":Z
    if-nez p1, :cond_1

    move/from16 v25, v14

    .line 347
    .local v25, "reqModifier":Z
    :goto_1
    if-eqz v25, :cond_4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/mob/tools/c/k;->a([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 348
    const/16 v28, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 349
    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v28

    sget-object v29, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_3

    .line 350
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    const/16 v28, 0x0

    .line 429
    .end local v14    # "isReqStatic":Z
    .end local v25    # "reqModifier":Z
    :goto_2
    return-object v28

    .line 339
    .end local v8    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "mth":Ljava/lang/reflect/Method;
    .end local v19    # "mthSign":Ljava/lang/String;
    .end local v27    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .restart local v8    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto/16 :goto_0

    .line 346
    .restart local v14    # "isReqStatic":Z
    .restart local v18    # "mth":Ljava/lang/reflect/Method;
    .restart local v19    # "mthSign":Ljava/lang/String;
    .restart local v27    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1
    if-nez v14, :cond_2

    const/16 v25, 0x1

    goto :goto_1

    :cond_2
    const/16 v25, 0x0

    goto :goto_1

    .line 353
    .restart local v25    # "reqModifier":Z
    :cond_3
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    goto :goto_2

    .line 358
    .end local v14    # "isReqStatic":Z
    .end local v25    # "reqModifier":Z
    :cond_4
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 359
    .local v9, "clzs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    :goto_3
    if-eqz v8, :cond_5

    .line 360
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    invoke-virtual {v8}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v8

    goto :goto_3

    .line 364
    :cond_5
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 365
    .local v22, "overloads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Method;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v24, "paramsTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/Class<*>;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :cond_6
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_c

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    .line 367
    .local v7, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v20

    .line 368
    .local v20, "mths":[Ljava/lang/reflect/Method;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v30, v0

    const/16 v28, 0x0

    :goto_4
    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_6

    aget-object v16, v20, v28

    .line 369
    .local v16, "m":Ljava/lang/reflect/Method;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v15

    .line 370
    .local v15, "isStatic":Z
    if-nez p1, :cond_7

    move/from16 v17, v15

    .line 371
    .local v17, "modifier":Z
    :goto_5
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_b

    if-eqz v17, :cond_b

    .line 372
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v23

    .line 373
    .local v23, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/mob/tools/c/k;->a([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v31

    if-eqz v31, :cond_a

    .line 374
    sget-object v28, Lcom/mob/tools/c/k;->d:Lcom/mob/tools/gui/b;

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/gui/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 375
    const/16 v28, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 376
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v28

    sget-object v29, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_9

    .line 377
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const/16 v28, 0x0

    goto/16 :goto_2

    .line 370
    .end local v17    # "modifier":Z
    .end local v23    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_7
    if-nez v15, :cond_8

    const/16 v17, 0x1

    goto :goto_5

    :cond_8
    const/16 v17, 0x0

    goto :goto_5

    .line 380
    .restart local v17    # "modifier":Z
    .restart local v23    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_9
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    goto/16 :goto_2

    .line 382
    :cond_a
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v31, v0

    if-lez v31, :cond_b

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v31, v0

    add-int/lit8 v31, v31, -0x1

    aget-object v31, v23, v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Class;->isArray()Z

    move-result v31

    if-eqz v31, :cond_b

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v31, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v32, v0

    add-int/lit8 v32, v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_b

    .line 384
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    .end local v23    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_b
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_4

    .line 391
    .end local v7    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "isStatic":Z
    .end local v16    # "m":Ljava/lang/reflect/Method;
    .end local v17    # "modifier":Z
    .end local v20    # "mths":[Ljava/lang/reflect/Method;
    :cond_c
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_6
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v12, v0, :cond_14

    .line 392
    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Ljava/lang/Class;

    .line 393
    .restart local v23    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x1

    aget-object v28, v23, v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v10

    .line 394
    .local v10, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/mob/tools/c/k;->b([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v28

    if-eqz v28, :cond_e

    .line 395
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v28, v0

    add-int/lit8 v28, v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    .line 396
    .local v21, "newArgs":[Ljava/lang/Object;
    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v28

    move-object/from16 v2, v21

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 397
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-static {v10, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v29

    aput-object v29, v21, v28

    .line 398
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/reflect/Method;

    .line 399
    .restart local v16    # "m":Ljava/lang/reflect/Method;
    const/16 v28, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 400
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v28

    sget-object v29, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_d

    .line 401
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    const/16 v28, 0x0

    goto/16 :goto_2

    .line 404
    :cond_d
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    goto/16 :goto_2

    .line 407
    .end local v16    # "m":Ljava/lang/reflect/Method;
    .end local v21    # "newArgs":[Ljava/lang/Object;
    :cond_e
    const/4 v13, 0x1

    .line 408
    .local v13, "isElement":Z
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v28, v0

    add-int/lit8 v26, v28, -0x1

    .local v26, "t":I
    :goto_7
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v26

    move/from16 v1, v28

    if-ge v0, v1, :cond_f

    .line 409
    aget-object v28, v27, v26

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_10

    .line 410
    const/4 v13, 0x0

    .line 414
    :cond_f
    if-eqz v13, :cond_13

    .line 415
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v29, v0

    sub-int v28, v28, v29

    add-int/lit8 v6, v28, 0x1

    .line 416
    .local v6, "arrLen":I
    invoke-static {v10, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    .line 417
    .local v5, "arr":Ljava/lang/Object;
    const/4 v11, 0x0

    .local v11, "e":I
    :goto_8
    if-ge v11, v6, :cond_11

    .line 418
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x1

    add-int v28, v28, v11

    aget-object v28, p3, v28

    move-object/from16 v0, v28

    invoke-static {v5, v11, v0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 417
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 408
    .end local v5    # "arr":Ljava/lang/Object;
    .end local v6    # "arrLen":I
    .end local v11    # "e":I
    :cond_10
    add-int/lit8 v26, v26, 0x1

    goto :goto_7

    .line 420
    .restart local v5    # "arr":Ljava/lang/Object;
    .restart local v6    # "arrLen":I
    .restart local v11    # "e":I
    :cond_11
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    .line 421
    .restart local v21    # "newArgs":[Ljava/lang/Object;
    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x1

    move-object/from16 v0, p3

    move/from16 v1, v28

    move-object/from16 v2, v21

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 422
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x1

    aput-object v5, v21, v28

    .line 423
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/reflect/Method;

    .line 424
    .restart local v16    # "m":Ljava/lang/reflect/Method;
    const/16 v28, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 425
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v28

    sget-object v29, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_12

    .line 426
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    const/16 v28, 0x0

    goto/16 :goto_2

    .line 429
    :cond_12
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    goto/16 :goto_2

    .line 391
    .end local v5    # "arr":Ljava/lang/Object;
    .end local v6    # "arrLen":I
    .end local v11    # "e":I
    .end local v16    # "m":Ljava/lang/reflect/Method;
    .end local v21    # "newArgs":[Ljava/lang/Object;
    :cond_13
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_6

    .line 435
    .end local v10    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "isElement":Z
    .end local v23    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v26    # "t":I
    :cond_14
    new-instance v28, Ljava/lang/NoSuchMethodException;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "className: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", methodName: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v28
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 321
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v2, p1, p2}, Lcom/mob/tools/c/k;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 322
    :catch_0
    move-exception v1

    .line 323
    .local v1, "t":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/NoSuchMethodException;

    if-eqz v2, :cond_0

    .line 324
    throw v1

    .line 326
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "className: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", methodName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 182
    :try_start_0
    invoke-static {p0, p1}, Lcom/mob/tools/c/k;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, "t":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/NoSuchMethodException;

    if-eqz v2, :cond_0

    .line 185
    throw v1

    .line 187
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "className: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", methodName: <init>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static varargs a(Ljava/util/HashMap;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mob/tools/c/k$a;",
            ">;[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 831
    .local p0, "proxyHandler":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/mob/tools/c/k$a;>;"
    .local p1, "proxyIntefaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 832
    .local v1, "loader":Ljava/lang/ClassLoader;
    new-instance v0, Lcom/mob/tools/c/k$1;

    invoke-direct {v0, p0}, Lcom/mob/tools/c/k$1;-><init>(Ljava/util/HashMap;)V

    .line 841
    .local v0, "handler":Ljava/lang/reflect/InvocationHandler;
    invoke-static {v1, p1, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 802
    .local p0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Lcom/mob/tools/c/k;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 803
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 804
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 805
    sget-object v1, Lcom/mob/tools/c/k;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 806
    const/4 v0, 0x0

    .line 812
    :cond_0
    :goto_0
    return-object v0

    .line 808
    :cond_1
    sget-object v1, Lcom/mob/tools/c/k;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    sget-object v1, Lcom/mob/tools/c/k;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/mob/tools/c/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 91
    const-class v2, Lcom/mob/tools/c/k;

    monitor-enter v2

    :try_start_0
    const-string v1, ".*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    sget-object v1, Lcom/mob/tools/c/k;->a:Ljava/util/HashSet;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 93
    const-string p0, "*"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .end local p0    # "name":Ljava/lang/String;
    :goto_0
    monitor-exit v2

    return-object p0

    .line 96
    .restart local p0    # "name":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 97
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_1

    .line 98
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    .line 100
    :cond_1
    sget-object v1, Lcom/mob/tools/c/k;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v1, Lcom/mob/tools/c/k;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 91
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p0, "receiver"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 623
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/mob/tools/c/k;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    return-void

    .line 624
    :catch_0
    move-exception v1

    .line 625
    .local v1, "t":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/NoSuchFieldException;

    if-eqz v2, :cond_0

    .line 626
    throw v1

    .line 629
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "className: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fieldName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 630
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 513
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/mob/tools/c/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    return-void

    .line 514
    :catch_0
    move-exception v1

    .line 515
    .local v1, "t":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/NoSuchFieldException;

    if-eqz v2, :cond_0

    .line 516
    throw v1

    .line 518
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "className: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fieldName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 519
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "primitive":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    const-class v0, Ljava/lang/Byte;

    if-eq p1, v0, :cond_7

    :cond_0
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    const-class v0, Ljava/lang/Short;

    if-eq p1, v0, :cond_7

    const-class v0, Ljava/lang/Byte;

    if-eq p1, v0, :cond_7

    const-class v0, Ljava/lang/Character;

    if-eq p1, v0, :cond_7

    :cond_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    const-class v0, Ljava/lang/Character;

    if-eq p1, v0, :cond_7

    const-class v0, Ljava/lang/Short;

    if-eq p1, v0, :cond_7

    const-class v0, Ljava/lang/Byte;

    if-eq p1, v0, :cond_7

    :cond_2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    const-class v0, Ljava/lang/Integer;

    if-eq p1, v0, :cond_7

    const-class v0, Ljava/lang/Short;

    if-eq p1, v0, :cond_7

    const-class v0, Ljava/lang/Byte;

    if-eq p1, v0, :cond_7

    const-class v0, Ljava/lang/Character;

    if-eq p1, v0, :cond_7

    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    const-class v0, Ljava/lang/Long;

    if-eq p1, v0, :cond_7

    const-class v0, Ljava/lang/Integer;

    if-eq p1, v0, :cond_7

    const-class v0, Ljava/lang/Short;

    if-eq p1, v0, :cond_7

    const-class v0, Ljava/lang/Byte;

    if-eq p1, v0, :cond_7

    const-class v0, Ljava/lang/Character;

    if-eq p1, v0, :cond_7

    :cond_4
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    const-class v0, Ljava/lang/Float;

    if-eq p1, v0, :cond_7

    const-class v0, Ljava/lang/Long;

    if-eq p1, v0, :cond_7

    const-class v0, Ljava/lang/Integer;

    if-eq p1, v0, :cond_7

    const-class v0, Ljava/lang/Short;

    if-eq p1, v0, :cond_7

    const-class v0, Ljava/lang/Byte;

    if-eq p1, v0, :cond_7

    const-class v0, Ljava/lang/Character;

    if-eq p1, v0, :cond_7

    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    const-class v0, Ljava/lang/Double;

    if-eq p1, v0, :cond_7

    const-class v0, Ljava/lang/Float;

    if-eq p1, v0, :cond_7

    const-class v0, Ljava/lang/Long;

    if-eq p1, v0, :cond_7

    const-class v0, Ljava/lang/Integer;

    if-eq p1, v0, :cond_7

    const-class v0, Ljava/lang/Short;

    if-eq p1, v0, :cond_7

    const-class v0, Ljava/lang/Byte;

    if-eq p1, v0, :cond_7

    const-class v0, Ljava/lang/Character;

    if-eq p1, v0, :cond_7

    :cond_6
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_8

    const-class v0, Ljava/lang/Boolean;

    if-ne p1, v0, :cond_8

    :cond_7
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a([Ljava/lang/Class;[Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "mTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p1, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v2, p0

    array-length v3, p1

    if-ne v2, v3, :cond_2

    .line 146
    const/4 v1, 0x1

    .line 147
    .local v1, "match":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 148
    aget-object v2, p1, v0

    if-eqz v2, :cond_1

    aget-object v2, p0, v0

    aget-object v3, p1, v0

    invoke-static {v2, v3}, Lcom/mob/tools/c/k;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    aget-object v2, p0, v0

    aget-object v3, p1, v0

    .line 149
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 150
    const/4 v1, 0x0

    .line 156
    .end local v0    # "i":I
    .end local v1    # "match":Z
    :cond_0
    :goto_1
    return v1

    .line 147
    .restart local v0    # "i":I
    .restart local v1    # "match":Z
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    .end local v0    # "i":I
    .end local v1    # "match":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static a([Ljava/lang/Object;)[Ljava/lang/Class;
    .locals 3
    .param p0, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 122
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Class;

    .line 123
    .local v1, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 124
    aget-object v2, p0, v0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_1
    aput-object v2, v1, v0

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_0
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_1

    .line 126
    :cond_1
    return-object v1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 784
    invoke-static {p0}, Lcom/mob/tools/c/k;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 785
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 787
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 788
    if-eqz v0, :cond_0

    .line 789
    sget-object v1, Lcom/mob/tools/c/k;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 793
    :cond_0
    :goto_0
    return-object v0

    .line 791
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p0, "receiver"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 571
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 572
    invoke-static {p0, p1}, Lcom/mob/tools/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 589
    :goto_0
    return-object v4

    .line 575
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 576
    .local v2, "clzs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 577
    .local v1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v1, :cond_1

    .line 578
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    .line 582
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 583
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 585
    .local v3, "fld":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 587
    :goto_2
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 588
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 589
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 593
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "fld":Ljava/lang/reflect/Field;
    :cond_3
    new-instance v4, Ljava/lang/NoSuchFieldException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "className: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", fieldName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 586
    .restart local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "fld":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 468
    :try_start_0
    invoke-static {p0, p1}, Lcom/mob/tools/c/k;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 469
    :catch_0
    move-exception v1

    .line 470
    .local v1, "t":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/NoSuchFieldException;

    if-eqz v2, :cond_0

    .line 471
    throw v1

    .line 473
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "className: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fieldName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static varargs b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 194
    const-string v21, "["

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 195
    invoke-static/range {p0 .. p1}, Lcom/mob/tools/c/k;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 252
    :goto_0
    return-object v21

    .line 198
    :cond_0
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "#"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 199
    .local v14, "mthSign":Ljava/lang/String;
    sget-object v21, Lcom/mob/tools/c/k;->e:Lcom/mob/tools/gui/b;

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lcom/mob/tools/gui/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/reflect/Constructor;

    .line 200
    .local v9, "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-static/range {p1 .. p1}, Lcom/mob/tools/c/k;->a([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v20

    .line 201
    .local v20, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/mob/tools/c/k;->a([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 202
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 203
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    goto :goto_0

    .line 206
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/mob/tools/c/k;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 207
    .local v7, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v10

    .line 208
    .local v10, "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v16, "overloads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Constructor<*>;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v18, "paramsTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/Class<*>;>;"
    array-length v0, v10

    move/from16 v22, v0

    const/16 v21, 0x0

    :goto_1
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    aget-object v6, v10, v21

    .line 211
    .local v6, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v17

    .line 212
    .local v17, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/mob/tools/c/k;->a([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 213
    sget-object v21, Lcom/mob/tools/c/k;->e:Lcom/mob/tools/gui/b;

    move-object/from16 v0, v21

    invoke-virtual {v0, v14, v6}, Lcom/mob/tools/gui/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 214
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 215
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    goto/16 :goto_0

    .line 216
    :cond_2
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    if-lez v23, :cond_3

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    aget-object v23, v17, v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->isArray()Z

    move-result v23

    if-eqz v23, :cond_3

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_3

    .line 218
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_3
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 223
    .end local v6    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v17    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_4
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v12, v0, :cond_a

    .line 224
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/Class;

    .line 225
    .restart local v17    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    aget-object v21, v17, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    .line 226
    .local v8, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/mob/tools/c/k;->b([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 227
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    new-array v15, v0, [Ljava/lang/Object;

    .line 228
    .local v15, "newArgs":[Ljava/lang/Object;
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-static {v0, v1, v15, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-static {v8, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v22

    aput-object v22, v15, v21

    .line 230
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Constructor;

    .line 231
    .restart local v6    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 232
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    goto/16 :goto_0

    .line 234
    .end local v6    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v15    # "newArgs":[Ljava/lang/Object;
    :cond_5
    const/4 v13, 0x1

    .line 235
    .local v13, "isElement":Z
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v19, v21, -0x1

    .local v19, "t":I
    :goto_3
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    .line 236
    aget-object v21, v20, v19

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 237
    const/4 v13, 0x0

    .line 241
    :cond_6
    if-eqz v13, :cond_9

    .line 242
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v22, v0

    sub-int v21, v21, v22

    add-int/lit8 v5, v21, 0x1

    .line 243
    .local v5, "arrLen":I
    invoke-static {v8, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    .line 244
    .local v4, "arr":Ljava/lang/Object;
    const/4 v11, 0x0

    .local v11, "e":I
    :goto_4
    if-ge v11, v5, :cond_8

    .line 245
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    add-int v21, v21, v11

    aget-object v21, p1, v21

    move-object/from16 v0, v21

    invoke-static {v4, v11, v0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 244
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 235
    .end local v4    # "arr":Ljava/lang/Object;
    .end local v5    # "arrLen":I
    .end local v11    # "e":I
    :cond_7
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 247
    .restart local v4    # "arr":Ljava/lang/Object;
    .restart local v5    # "arrLen":I
    .restart local v11    # "e":I
    :cond_8
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    new-array v15, v0, [Ljava/lang/Object;

    .line 248
    .restart local v15    # "newArgs":[Ljava/lang/Object;
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-static {v0, v1, v15, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    aput-object v4, v15, v21

    .line 250
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Constructor;

    .line 251
    .restart local v6    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 252
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    goto/16 :goto_0

    .line 223
    .end local v4    # "arr":Ljava/lang/Object;
    .end local v5    # "arrLen":I
    .end local v6    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v11    # "e":I
    .end local v15    # "newArgs":[Ljava/lang/Object;
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 257
    .end local v8    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "isElement":Z
    .end local v17    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v19    # "t":I
    :cond_a
    new-instance v21, Ljava/lang/NoSuchMethodException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "className: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", methodName: <init>"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v21
.end method

.method private static b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p0, "receiver"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 637
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 638
    invoke-static {p0, p1, p2}, Lcom/mob/tools/c/k;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 657
    :goto_0
    return-void

    .line 642
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 643
    .local v2, "clzs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 644
    .local v1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v1, :cond_1

    .line 645
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    .line 649
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 650
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 652
    .local v3, "fld":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 654
    :goto_2
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 655
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 656
    invoke-virtual {v3, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 661
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "fld":Ljava/lang/reflect/Field;
    :cond_3
    new-instance v4, Ljava/lang/NoSuchFieldException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "className: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", fieldName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 653
    .restart local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "fld":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 526
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 527
    .local v2, "clzs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    invoke-static {p0}, Lcom/mob/tools/c/k;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 528
    .local v1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v1, :cond_0

    .line 529
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 533
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 534
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 536
    .local v3, "fld":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 538
    :goto_1
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 539
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 540
    const/4 v4, 0x0

    invoke-virtual {v3, v4, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 541
    return-void

    .line 545
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "fld":Ljava/lang/reflect/Field;
    :cond_2
    new-instance v4, Ljava/lang/NoSuchFieldException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "className: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", fieldName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 537
    .restart local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "fld":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private static b([Ljava/lang/Class;[Ljava/lang/Class;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "mTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p1, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 160
    array-length v4, p0

    array-length v5, p1

    sub-int/2addr v4, v5

    if-ne v4, v2, :cond_3

    .line 161
    const/4 v1, 0x1

    .line 162
    .local v1, "match":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_0

    .line 163
    aget-object v4, p1, v0

    if-eqz v4, :cond_1

    aget-object v4, p0, v0

    aget-object v5, p1, v0

    invoke-static {v4, v5}, Lcom/mob/tools/c/k;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1

    aget-object v4, p0, v0

    aget-object v5, p1, v0

    .line 164
    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 165
    const/4 v1, 0x0

    .line 169
    :cond_0
    if-eqz v1, :cond_2

    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    aget-object v4, p0, v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 171
    .end local v0    # "i":I
    .end local v1    # "match":Z
    :goto_1
    return v2

    .line 162
    .restart local v0    # "i":I
    .restart local v1    # "match":Z
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    .line 169
    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "match":Z
    :cond_3
    move v2, v3

    .line 171
    goto :goto_1
.end method

.method private static declared-synchronized c(Ljava/lang/String;)Ljava/lang/Class;
    .locals 6
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 106
    const-class v3, Lcom/mob/tools/c/k;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/mob/tools/c/k;->b:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 107
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_1

    .line 108
    sget-object v2, Lcom/mob/tools/c/k;->a:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .local v1, "packageName":Ljava/lang/String;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/c/k;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    :goto_0
    :try_start_2
    sget-object v4, Lcom/mob/tools/c/k;->b:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    check-cast v0, Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    .restart local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 118
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_1
    monitor-exit v3

    return-object v0

    .line 106
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 111
    .restart local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private static c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p0, "receiver"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 597
    const-string v2, "length"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 598
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 606
    :goto_0
    return-object v2

    .line 599
    :cond_0
    const-string v2, "["

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 600
    const/4 v0, -0x1

    .line 602
    .local v0, "index":I
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 603
    .local v1, "strIndex":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 605
    .end local v1    # "strIndex":Ljava/lang/String;
    :goto_1
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 606
    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 610
    .end local v0    # "index":I
    :cond_1
    new-instance v2, Ljava/lang/NoSuchFieldException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "className: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fieldName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 604
    .restart local v0    # "index":I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 482
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 483
    .local v2, "clzs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    invoke-static {p0}, Lcom/mob/tools/c/k;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 484
    .local v1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v1, :cond_0

    .line 485
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 489
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 490
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 492
    .local v3, "fld":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 494
    :goto_1
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 495
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 496
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 500
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "fld":Ljava/lang/reflect/Field;
    :cond_2
    new-instance v4, Ljava/lang/NoSuchFieldException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "className: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", fieldName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 493
    .restart local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "fld":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private static varargs c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 261
    move-object v5, p0

    .line 262
    .local v5, "tmp":Ljava/lang/String;
    const/4 v0, 0x0

    .line 263
    .local v0, "dimension":I
    :goto_0
    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 264
    add-int/lit8 v0, v0, 0x1

    .line 265
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 268
    :cond_0
    const/4 v3, 0x0

    .line 269
    .local v3, "lens":[I
    array-length v6, p1

    if-ne v0, v6, :cond_1

    .line 270
    new-array v3, v0, [I

    .line 271
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 273
    :try_start_0
    aget-object v6, p1, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v3, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 274
    :catch_0
    move-exception v4

    .line 275
    .local v4, "t":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 281
    .end local v2    # "i":I
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_1
    if-eqz v3, :cond_a

    .line 282
    const/4 v1, 0x0

    .line 283
    .local v1, "eleClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "B"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 284
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 303
    :goto_2
    if-eqz v1, :cond_a

    .line 304
    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    return-object v6

    .line 285
    :cond_2
    const-string v6, "S"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 286
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto :goto_2

    .line 287
    :cond_3
    const-string v6, "I"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 288
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_2

    .line 289
    :cond_4
    const-string v6, "J"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 290
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_2

    .line 291
    :cond_5
    const-string v6, "F"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 292
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_2

    .line 293
    :cond_6
    const-string v6, "D"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 294
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    goto :goto_2

    .line 295
    :cond_7
    const-string v6, "Z"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 296
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_2

    .line 297
    :cond_8
    const-string v6, "C"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 298
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    goto :goto_2

    .line 300
    :cond_9
    invoke-static {v5}, Lcom/mob/tools/c/k;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_2

    .line 308
    .end local v1    # "eleClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_a
    new-instance v6, Ljava/lang/NoSuchMethodException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "className: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", methodName: <init>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private static c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 12
    .param p0, "receiver"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 665
    const-string v9, "["

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1d

    const-string v9, "]"

    invoke-virtual {p1, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 666
    const/4 v3, -0x1

    .line 668
    .local v3, "index":I
    const/4 v9, 0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 669
    .local v7, "strIndex":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 671
    .end local v7    # "strIndex":Ljava/lang/String;
    :goto_0
    const/4 v9, -0x1

    if-eq v3, v9, :cond_1d

    .line 672
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 673
    .local v5, "recClzName":Ljava/lang/String;
    :goto_1
    const-string v9, "["

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 674
    invoke-virtual {v5, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 676
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 678
    .local v8, "vClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v9, "B"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 679
    const-class v9, Ljava/lang/Byte;

    if-ne v8, v9, :cond_1d

    .line 680
    invoke-static {p0, v3, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 770
    :goto_2
    return-void

    .line 683
    :cond_1
    const-string v9, "S"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 684
    const/4 v6, 0x0

    .line 685
    .local v6, "sValue":Ljava/lang/Object;
    const-class v9, Ljava/lang/Short;

    if-ne v8, v9, :cond_3

    .line 686
    move-object v6, p2

    .line 690
    .end local v6    # "sValue":Ljava/lang/Object;
    :cond_2
    :goto_3
    if-eqz v6, :cond_1d

    .line 691
    invoke-static {p0, v3, v6}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_2

    .line 687
    .restart local v6    # "sValue":Ljava/lang/Object;
    :cond_3
    const-class v9, Ljava/lang/Byte;

    if-ne v8, v9, :cond_2

    move-object v9, p2

    .line 688
    check-cast v9, Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    int-to-short v9, v9

    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    .local v6, "sValue":Ljava/lang/Short;
    goto :goto_3

    .line 694
    .end local v6    # "sValue":Ljava/lang/Short;
    :cond_4
    const-string v9, "I"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 695
    const/4 v2, 0x0

    .line 696
    .local v2, "iValue":Ljava/lang/Object;
    const-class v9, Ljava/lang/Integer;

    if-ne v8, v9, :cond_6

    .line 697
    move-object v2, p2

    .line 703
    .end local v2    # "iValue":Ljava/lang/Object;
    :cond_5
    :goto_4
    if-eqz v2, :cond_1d

    .line 704
    invoke-static {p0, v3, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_2

    .line 698
    .restart local v2    # "iValue":Ljava/lang/Object;
    :cond_6
    const-class v9, Ljava/lang/Short;

    if-ne v8, v9, :cond_7

    move-object v9, p2

    .line 699
    check-cast v9, Ljava/lang/Short;

    invoke-virtual {v9}, Ljava/lang/Short;->shortValue()S

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .local v2, "iValue":Ljava/lang/Integer;
    goto :goto_4

    .line 700
    .local v2, "iValue":Ljava/lang/Object;
    :cond_7
    const-class v9, Ljava/lang/Byte;

    if-ne v8, v9, :cond_5

    move-object v9, p2

    .line 701
    check-cast v9, Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .local v2, "iValue":Ljava/lang/Integer;
    goto :goto_4

    .line 707
    .end local v2    # "iValue":Ljava/lang/Integer;
    :cond_8
    const-string v9, "J"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 708
    const/4 v4, 0x0

    .line 709
    .local v4, "jValue":Ljava/lang/Object;
    const-class v9, Ljava/lang/Long;

    if-ne v8, v9, :cond_a

    .line 710
    move-object v4, p2

    .line 718
    .end local v4    # "jValue":Ljava/lang/Object;
    :cond_9
    :goto_5
    if-eqz v4, :cond_1d

    .line 719
    invoke-static {p0, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_2

    .line 711
    .restart local v4    # "jValue":Ljava/lang/Object;
    :cond_a
    const-class v9, Ljava/lang/Integer;

    if-ne v8, v9, :cond_b

    move-object v9, p2

    .line 712
    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v10, v9

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .local v4, "jValue":Ljava/lang/Long;
    goto :goto_5

    .line 713
    .local v4, "jValue":Ljava/lang/Object;
    :cond_b
    const-class v9, Ljava/lang/Short;

    if-ne v8, v9, :cond_c

    move-object v9, p2

    .line 714
    check-cast v9, Ljava/lang/Short;

    invoke-virtual {v9}, Ljava/lang/Short;->shortValue()S

    move-result v9

    int-to-long v10, v9

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .local v4, "jValue":Ljava/lang/Long;
    goto :goto_5

    .line 715
    .local v4, "jValue":Ljava/lang/Object;
    :cond_c
    const-class v9, Ljava/lang/Byte;

    if-ne v8, v9, :cond_9

    move-object v9, p2

    .line 716
    check-cast v9, Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    int-to-long v10, v9

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .local v4, "jValue":Ljava/lang/Long;
    goto :goto_5

    .line 722
    .end local v4    # "jValue":Ljava/lang/Long;
    :cond_d
    const-string v9, "F"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 723
    const/4 v1, 0x0

    .line 724
    .local v1, "fValue":Ljava/lang/Object;
    const-class v9, Ljava/lang/Float;

    if-ne v8, v9, :cond_f

    .line 725
    move-object v1, p2

    .line 735
    .end local v1    # "fValue":Ljava/lang/Object;
    :cond_e
    :goto_6
    if-eqz v1, :cond_1d

    .line 736
    invoke-static {p0, v3, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 726
    .restart local v1    # "fValue":Ljava/lang/Object;
    :cond_f
    const-class v9, Ljava/lang/Long;

    if-ne v8, v9, :cond_10

    move-object v9, p2

    .line 727
    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    long-to-float v9, v10

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .local v1, "fValue":Ljava/lang/Float;
    goto :goto_6

    .line 728
    .local v1, "fValue":Ljava/lang/Object;
    :cond_10
    const-class v9, Ljava/lang/Integer;

    if-ne v8, v9, :cond_11

    move-object v9, p2

    .line 729
    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-float v9, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .local v1, "fValue":Ljava/lang/Float;
    goto :goto_6

    .line 730
    .local v1, "fValue":Ljava/lang/Object;
    :cond_11
    const-class v9, Ljava/lang/Short;

    if-ne v8, v9, :cond_12

    move-object v9, p2

    .line 731
    check-cast v9, Ljava/lang/Short;

    invoke-virtual {v9}, Ljava/lang/Short;->shortValue()S

    move-result v9

    int-to-float v9, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .local v1, "fValue":Ljava/lang/Float;
    goto :goto_6

    .line 732
    .local v1, "fValue":Ljava/lang/Object;
    :cond_12
    const-class v9, Ljava/lang/Byte;

    if-ne v8, v9, :cond_e

    move-object v9, p2

    .line 733
    check-cast v9, Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    int-to-float v9, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .local v1, "fValue":Ljava/lang/Float;
    goto :goto_6

    .line 739
    .end local v1    # "fValue":Ljava/lang/Float;
    :cond_13
    const-string v9, "D"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 740
    const/4 v0, 0x0

    .line 741
    .local v0, "dValue":Ljava/lang/Object;
    const-class v9, Ljava/lang/Double;

    if-ne v8, v9, :cond_15

    .line 742
    move-object v0, p2

    .line 754
    .end local v0    # "dValue":Ljava/lang/Object;
    :cond_14
    :goto_7
    if-eqz v0, :cond_1d

    .line 755
    invoke-static {p0, v3, v0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 743
    .restart local v0    # "dValue":Ljava/lang/Object;
    :cond_15
    const-class v9, Ljava/lang/Float;

    if-ne v8, v9, :cond_16

    move-object v9, p2

    .line 744
    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .local v0, "dValue":Ljava/lang/Double;
    goto :goto_7

    .line 745
    .local v0, "dValue":Ljava/lang/Object;
    :cond_16
    const-class v9, Ljava/lang/Long;

    if-ne v8, v9, :cond_17

    move-object v9, p2

    .line 746
    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    long-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .local v0, "dValue":Ljava/lang/Double;
    goto :goto_7

    .line 747
    .local v0, "dValue":Ljava/lang/Object;
    :cond_17
    const-class v9, Ljava/lang/Integer;

    if-ne v8, v9, :cond_18

    move-object v9, p2

    .line 748
    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .local v0, "dValue":Ljava/lang/Double;
    goto :goto_7

    .line 749
    .local v0, "dValue":Ljava/lang/Object;
    :cond_18
    const-class v9, Ljava/lang/Short;

    if-ne v8, v9, :cond_19

    move-object v9, p2

    .line 750
    check-cast v9, Ljava/lang/Short;

    invoke-virtual {v9}, Ljava/lang/Short;->shortValue()S

    move-result v9

    int-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .local v0, "dValue":Ljava/lang/Double;
    goto :goto_7

    .line 751
    .local v0, "dValue":Ljava/lang/Object;
    :cond_19
    const-class v9, Ljava/lang/Byte;

    if-ne v8, v9, :cond_14

    move-object v9, p2

    .line 752
    check-cast v9, Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    int-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .local v0, "dValue":Ljava/lang/Double;
    goto :goto_7

    .line 758
    .end local v0    # "dValue":Ljava/lang/Double;
    :cond_1a
    const-string v9, "Z"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 759
    const-class v9, Ljava/lang/Boolean;

    if-ne v8, v9, :cond_1d

    .line 760
    invoke-static {p0, v3, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 763
    :cond_1b
    const-string v9, "C"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 764
    const-class v9, Ljava/lang/Character;

    if-ne v8, v9, :cond_1d

    .line 765
    invoke-static {p0, v3, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 768
    :cond_1c
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 769
    invoke-static {p0, v3, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 775
    .end local v3    # "index":I
    .end local v5    # "recClzName":Ljava/lang/String;
    .end local v8    # "vClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1d
    new-instance v9, Ljava/lang/NoSuchFieldException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "className: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", fieldName: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", value: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 670
    .restart local v3    # "index":I
    :catch_0
    move-exception v9

    goto/16 :goto_0
.end method
