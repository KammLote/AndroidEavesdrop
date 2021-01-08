.class public final Lcom/google/android/gms/internal/no;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/np;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/np",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final zzcaa:Lcom/google/android/gms/internal/no;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/no;

    invoke-direct {v0}, Lcom/google/android/gms/internal/no;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/no;->zzcaa:Lcom/google/android/gms/internal/no;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzFE()Lcom/google/android/gms/internal/no;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/no",
            "<TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/no;->zzcaa:Lcom/google/android/gms/internal/no;

    return-object v0
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzFD()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzFF()Lcom/google/android/gms/internal/np;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/np",
            "<TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public final zzFG()Lcom/google/android/gms/internal/np;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/np",
            "<TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public final zzFH()Lcom/google/android/gms/internal/np;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/np",
            "<TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public final zzFI()Lcom/google/android/gms/internal/np;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/np",
            "<TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public final zzFJ()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zza(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/android/gms/internal/np;Lcom/google/android/gms/internal/np;)Lcom/google/android/gms/internal/np;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/np",
            "<TK;TV;>;",
            "Lcom/google/android/gms/internal/np",
            "<TK;TV;>;)",
            "Lcom/google/android/gms/internal/np",
            "<TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public final zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/np;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/Comparator",
            "<TK;>;)",
            "Lcom/google/android/gms/internal/np",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ns;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ns;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final zza(Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/np;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Comparator",
            "<TK;>;)",
            "Lcom/google/android/gms/internal/np",
            "<TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/nr;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/nr",
            "<TK;TV;>;)V"
        }
    .end annotation

    return-void
.end method
