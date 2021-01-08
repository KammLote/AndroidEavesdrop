.class public final Lcom/google/android/gms/internal/nh;
.super Ljava/lang/Object;


# static fields
.field private static final zzbZV:Lcom/google/android/gms/internal/nj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ni;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ni;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/nh;->zzbZV:Lcom/google/android/gms/internal/nj;

    return-void
.end method

.method public static zzFz()Lcom/google/android/gms/internal/nj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/nj",
            "<TA;TA;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/nh;->zzbZV:Lcom/google/android/gms/internal/nj;

    return-object v0
.end method

.method public static zza(Ljava/util/Comparator;)Lcom/google/android/gms/internal/ng;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TK;>;)",
            "Lcom/google/android/gms/internal/ng",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ne;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ne;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static zza(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ng;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TA;TB;>;",
            "Ljava/util/Comparator",
            "<TA;>;)",
            "Lcom/google/android/gms/internal/ng",
            "<TA;TB;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x19

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v1, Lcom/google/android/gms/internal/nh;->zzbZV:Lcom/google/android/gms/internal/nj;

    invoke-static {v0, p0, v1, p1}, Lcom/google/android/gms/internal/ne;->zza(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/nj;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ne;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/nu;->zzb(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/android/gms/internal/nu;

    move-result-object v0

    goto :goto_0
.end method

.method public static zzb(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/nj;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ng;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TA;>;",
            "Ljava/util/Map",
            "<TB;TC;>;",
            "Lcom/google/android/gms/internal/nj",
            "<TA;TB;>;",
            "Ljava/util/Comparator",
            "<TA;>;)",
            "Lcom/google/android/gms/internal/ng",
            "<TA;TC;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x19

    if-ge v0, v1, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ne;->zza(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/nj;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ne;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/nw;->zzc(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/nj;Ljava/util/Comparator;)Lcom/google/android/gms/internal/nu;

    move-result-object v0

    goto :goto_0
.end method
