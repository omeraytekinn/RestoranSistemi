package onlineOrder;
/**
 *
 * @author oniketya
 */
public class MenuBean {
    private int drink,
                food,
                extra1,
                extra2,
                extra3;

    public MenuBean() {
        this.drink = 0;
        this.food = 0;
        this.extra1 = 0;
        this.extra2 = 0;
        this.extra3 = 0;
    }

    public int getDrink() {
        return drink;
    }

    public void setDrink(int drink) {
        this.drink = drink;
    }

    public int getFood() {
        return food;
    }

    public void setFood(int food) {
        this.food = food;
    }

    public int getExtra1() {
        return extra1;
    }

    public void setExtra1(int extra1) {
        this.extra1 = extra1;
    }

    public int getExtra2() {
        return extra2;
    }

    public void setExtra2(int extra2) {
        this.extra2 = extra2;
    }

    public int getExtra3() {
        return extra3;
    }

    public void setExtra3(int extra3) {
        this.extra3 = extra3;
    }
    
}
