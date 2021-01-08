.class final Lcom/google/android/gms/internal/pa;
.super Ljava/lang/Object;


# instance fields
.field private final data:Ljava/lang/Object;

.field private final zzcbw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcby:Ljava/lang/String;

.field private final zzcbz:Lcom/google/android/gms/internal/pe;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/pe;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/pe;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/pa;->zzcby:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/pa;->zzcbw:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/pa;->data:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/pa;->zzcbz:Lcom/google/android/gms/internal/pe;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/pe;Lcom/google/android/gms/internal/op;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/pa;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/pe;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/pa;)Lcom/google/android/gms/internal/pe;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/pa;->zzcbz:Lcom/google/android/gms/internal/pe;

    return-object v0
.end method


# virtual methods
.method public final getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/pa;->zzcby:Ljava/lang/String;

    return-object v0
.end method

.method public final getData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/pa;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public final zzGj()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/pa;->zzcbw:Ljava/util/List;

    return-object v0
.end method

.method public final zzGk()Lcom/google/android/gms/internal/pe;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/pa;->zzcbz:Lcom/google/android/gms/internal/pe;

    return-object v0
.end method
